//// (C) 1992-2018 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


//===----------------------------------------------------------------------===//
//
// Parameterized FIFO with input and output registers and ACL pipeline
// protocol ports. This "FIFO" stores no data and only hands out a sequence of
// numbers from 0..DEPTH-1 (tokens) in round robin fashion.
// 
//===----------------------------------------------------------------------===//

// altera message_off 10230

`default_nettype none

module acl_token_fifo_counter 
#(
    parameter integer DEPTH = 32,           // >0
    parameter integer STRICT_DEPTH = 1,     // 0|1
    parameter integer ALLOW_FULL_WRITE = 0, // 0|1
    parameter bit ASYNC_RESET = 1,          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
    parameter bit SYNCHRONIZE_RESET = 0     // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)
)
(
    clock,
    resetn,
    data_out,   // the width of this signal is set by this module, it is the 
                // responsibility of the top module to make sure the signal 
                // widths match across this interface.
    valid_in,
    valid_out,
    stall_in,
    stall_out,
    empty,
    full
);

    // This fifo is based on acl_valid_fifo
    // However, there are 2 differences: 
    // 1. The fifo is intialized as full
    // 2. We keep another counter to serve as the actual token

    // STRICT_DEPTH increases FIFO depth to a power of 2 + 1 depth.
    // No data, so just build a counter to count the number of valids stored in this "FIFO".
    //
    // The counter is constructed to count up to a MINIMUM value of DEPTH entries.
    // * Logical range of the counter C0 is [0, DEPTH].
    // * empty = (C0 <= 0)
    // * full = (C0 >= DEPTH)
    //
    // To have efficient detection of the empty condition (C0 == 0), the range is offset
    // by -1 so that a negative number indicates empty.
    // * Logical range of the counter C1 is [-1, DEPTH-1].
    // * empty = (C1 < 0)
    // * full = (C1 >= DEPTH-1)
    // The size of counter C1 is $clog2((DEPTH-1) + 1) + 1 => $clog2(DEPTH) + 1.
    //
    // To have efficient detection of the full condition (C1 >= DEPTH-1), change the
    // full condition to C1 == 2^$clog2(DEPTH-1), which is DEPTH-1 rounded up
    // to the next power of 2. This is only done if STRICT_DEPTH == 0, otherwise
    // the full condition is comparison vs. DEPTH-1.
    // * Logical range of the counter C2 is [-1, 2^$clog2(DEPTH-1)]
    // * empty = (C2 < 0)
    // * full = (C2 == 2^$clog2(DEPTH - 1))
    // The size of counter C2 is $clog2(DEPTH-1) + 2.
    // * empty = MSB
    // * full = ~[MSB] & [MSB-1]
    localparam COUNTER_WIDTH = (STRICT_DEPTH == 0) ?
        ((DEPTH > 1 ? $clog2(DEPTH-1) : 0) + 2) :
        ($clog2(DEPTH) + 1);

    input wire clock;
    input wire resetn;
    output logic [COUNTER_WIDTH-1:0] data_out;
    input wire valid_in;
    output logic valid_out;
    input wire stall_in;
    output logic stall_out;
    output logic empty;
    output logic full;

    logic [COUNTER_WIDTH - 1:0] valid_counter /* synthesis maxfan=1 dont_merge */;
    logic incr, decr;
    logic [1:0] valid_counter_update;
    logic [COUNTER_WIDTH - 1:0] valid_counter_update_extended;

    // The logical range for the token is [0,REAL_DEPTH-1], where REAL_DEPTH
    // is the actual depth of the fifo taking STRICT_DEPTH into account 
    // This counter is 1-bit less wide than valid_counter because it is
    // unsigned
    logic [COUNTER_WIDTH - 2:0] token;

    logic token_max;
    
    // Reset
    logic aclrn, sclrn;
    acl_reset_handler
    #(
        .ASYNC_RESET            (ASYNC_RESET),
        .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
        .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
        .PULSE_EXTENSION        (0),
        .PIPE_DEPTH             (1),
        .NUM_COPIES             (1)
    )
    acl_reset_handler_inst
    (
        .clk                    (clock),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (),
        .o_sclrn                (sclrn)
    );


    assign data_out = token;
    assign token_max = (STRICT_DEPTH == 0) ?
        (~token[$bits(token) - 1] & token[$bits(token) - 2]) :
        (token == DEPTH - 1);

    assign empty = valid_counter[$bits(valid_counter) - 1];
    assign full = (STRICT_DEPTH == 0) ?
        (~valid_counter[$bits(valid_counter) - 1] & valid_counter[$bits(valid_counter) - 2]) :
        (valid_counter == DEPTH - 1);
    assign incr = valid_in & ~stall_out;      // push
    assign decr = valid_out & ~stall_in;      // pop

    assign valid_out = ~empty;
    assign stall_out = ALLOW_FULL_WRITE ? (full & stall_in) : full;

    assign valid_counter_update = incr - decr;
    assign valid_counter_update_extended = $signed(valid_counter_update);

    always @( posedge clock or negedge aclrn ) begin
        if( !aclrn ) begin
            valid_counter <= (STRICT_DEPTH == 0) ? (2^$clog2(DEPTH-1)) : DEPTH - 1; // full 
            token <= 0;
        end
        else begin
            valid_counter <= valid_counter + valid_counter_update_extended;
            if (decr) token <= token_max ? 0 : token+1;     // increment token, if popping
            
            if( !sclrn ) begin
                valid_counter <= (STRICT_DEPTH == 0) ? (2^$clog2(DEPTH-1)) : DEPTH - 1; // full 
                token <= 0;
            end
        end 
    end
endmodule

`default_nettype wire
