`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2018 01:03:07 PM
// Design Name: 
// Module Name: patternToSensors
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module patternToSensors_v0(			
		
		input wire clk, 	//clk for reading mstream
		input wire stream_clk,  //clk for writing pattern
		input wire reset,		
		
		
	    //flags for the fifo which outputs MSTREAM data to sensor,
				
		//ODDR inputs
		//input wire reset_oddr,  ----- don't think we need these signals
		//input wire set_oddr,
				
		input wire [31:0]Num_Pat,
		output wire [20:1]MSTREAMOUT,	
		input wire stream_en_i,
		output reg stream_en_o,
					
		//flags for the fifo containing input MSTREAM32 data
		input wire [255:0] MSTREAM32,
		input wire empty,
		input wire valid,
		output wire rd_en,

		output wire [63:0] DO,
		output wire valid_fifo
    );
	
	//flags for the fifo which outputs MSTREAM data to sensor
	wire wr_en_f1;
	wire full_f1;
    wire almost_full_f1;
    wire empty_f1;
	
	//input and output data for the fifo which outputs MSTREAM data to sensor
	wire [255:0]DI_f1;
	wire [63:0]DO_f1;
	
	assign DO = DO_f1;
	//controls enable signals for fifos as well as the 
	//pattern mstream pattern bits that goes to fifos
	load_pattern_v0 controlLoading(
		.clk(clk),
		.rst(reset),		

		.pat_in(MSTREAM32),
		.pat_fifo_rd_en(rd_en),

		.camfifo_empty(empty),	
		.camfifo_valid(valid),	
		.FIFO_empty(empty_f1),
		.FIFO_full(almost_full_f1),

		.FIFO_wr(wr_en_f1),				
		.Pat_out(DI_f1),		

		.Num_Pat(Num_Pat)		
		
	);
	
	//fifo_w32_4096_r32_4096_ib fifo_pattern_to_sensors(
	//fifo_w32_8192_r32_8192_ib fifo_pattern_to_sensors(
	//fifo_w32_65536_r32_65536_ib fifo_pattern_to_sensors(
	//fifo_w32_131072_r32_131072_ib fifo_pattern_to_sensors(
	fifo_w256_1024_r64_4096_ib fifo_pattern_to_sensors( // change to read width 64, the ODDR will automatically truncate 40-63 the way it is set up now
				.rst(reset),
				.wr_clk(clk),
				.rd_clk(stream_clk),
				.din(DI_f1),
				.wr_en(wr_en_f1),
				.rd_en(stream_en_i),
				.dout(DO_f1),
				.full(full_f1),
        		.almost_full(almost_full_f1),
				.empty(empty_f1),
				.valid(valid_fifo)				
			);

	// 1 clk delay to sensor
	always @(posedge stream_clk) begin
		stream_en_o <= stream_en_i;
	end 
    /*
	genvar k;
	generate for ( k = 0; k < 20; k = k+1) begin
	
		// ODDR: Output Double Data Rate Output Register with Set, Reset
		// and Clock Enable.
		// 7 Series
		// Xilinx HDL Libraries Guide, version 14.3
		ODDR #(
		//.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE"
		.DDR_CLK_EDGE("SAME_EDGE"),
		.INIT(1'b0), // Initial value of Q: 1'b0 or 1'b1
		.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
		) MSTREAM_OUTPUTS (
			.Q(MSTREAMOUT[k+1]), // 1-bit DDR output
			.C(stream_clk), // 1-bit clock input
      		.CE(1'b1), // 1-bit clock enable input
			.D1(DO_f1[k]), // 1-bit data input (positive edge)
			.D2(DO_f1[k+32]), // 1-bit data input (negative edge)
			.R(0), // 1-bit reset (reset_oddr)
			.S(0) // 1-bit set (set_oddr)
		);
	end
	endgenerate
	*/
	
endmodule