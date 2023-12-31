module loop_pipeline (
		input  wire        clock,                //      clock.clk
		input  wire        resetn,               //      reset.reset_n
		input  wire        start,                //       call.valid
		output wire        busy,                 //           .stall
		output wire        done,                 //     return.valid
		input  wire        stall,                //           .stall
		output wire [19:0] returndata,           // returndata.data
		input  wire [63:0] A,                    //          A.data
		output wire [63:0] avmm_0_rw_address,    //  avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //           .byteenable
		output wire        avmm_0_rw_read,       //           .read
		input  wire [63:0] avmm_0_rw_readdata,   //           .readdata
		output wire        avmm_0_rw_write,      //           .write
		output wire [63:0] avmm_0_rw_writedata   //           .writedata
	);
endmodule

