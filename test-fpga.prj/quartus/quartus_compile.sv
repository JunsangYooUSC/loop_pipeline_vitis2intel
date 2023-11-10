module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] loop_pipeline_start
	, output logic [0:0] loop_pipeline_busy
	, output logic [0:0] loop_pipeline_done
	, input logic [0:0] loop_pipeline_stall
	, output logic [19:0] loop_pipeline_returndata
	, input logic [63:0] loop_pipeline_A
	, output logic [63:0] loop_pipeline_avmm_0_rw_address
	, output logic [7:0] loop_pipeline_avmm_0_rw_byteenable
	, output logic [0:0] loop_pipeline_avmm_0_rw_read
	, input logic [63:0] loop_pipeline_avmm_0_rw_readdata
	, output logic [0:0] loop_pipeline_avmm_0_rw_write
	, output logic [63:0] loop_pipeline_avmm_0_rw_writedata
	);

	logic [0:0] loop_pipeline_start_reg;
	logic [0:0] loop_pipeline_busy_reg;
	logic [0:0] loop_pipeline_done_reg;
	logic [0:0] loop_pipeline_stall_reg;
	logic [19:0] loop_pipeline_returndata_reg;
	logic [63:0] loop_pipeline_A_reg;
	logic [63:0] loop_pipeline_avmm_0_rw_address_reg;
	logic [7:0] loop_pipeline_avmm_0_rw_byteenable_reg;
	logic [0:0] loop_pipeline_avmm_0_rw_read_reg;
	logic [63:0] loop_pipeline_avmm_0_rw_readdata_reg;
	logic [0:0] loop_pipeline_avmm_0_rw_write_reg;
	logic [63:0] loop_pipeline_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		loop_pipeline_start_reg <= loop_pipeline_start;
		loop_pipeline_busy <= loop_pipeline_busy_reg;
		loop_pipeline_done <= loop_pipeline_done_reg;
		loop_pipeline_stall_reg <= loop_pipeline_stall;
		loop_pipeline_returndata <= loop_pipeline_returndata_reg;
		loop_pipeline_A_reg <= loop_pipeline_A;
		loop_pipeline_avmm_0_rw_address <= loop_pipeline_avmm_0_rw_address_reg;
		loop_pipeline_avmm_0_rw_byteenable <= loop_pipeline_avmm_0_rw_byteenable_reg;
		loop_pipeline_avmm_0_rw_read <= loop_pipeline_avmm_0_rw_read_reg;
		loop_pipeline_avmm_0_rw_readdata_reg <= loop_pipeline_avmm_0_rw_readdata;
		loop_pipeline_avmm_0_rw_write <= loop_pipeline_avmm_0_rw_write_reg;
		loop_pipeline_avmm_0_rw_writedata <= loop_pipeline_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	loop_pipeline loop_pipeline_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(loop_pipeline_start_reg)
		, .busy(loop_pipeline_busy_reg)
		, .done(loop_pipeline_done_reg)
		, .stall(loop_pipeline_stall_reg)
		, .returndata(loop_pipeline_returndata_reg)
		, .A(loop_pipeline_A_reg)
		, .avmm_0_rw_address(loop_pipeline_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(loop_pipeline_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(loop_pipeline_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(loop_pipeline_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(loop_pipeline_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(loop_pipeline_avmm_0_rw_writedata_reg)
	);



endmodule
