`timescale 1ns / 100ps
// Company:
// Engineer:
//
// Create Date:    11:03:00 09/20/2017
// Design Name:
// Module Name:    Reveal_Top
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module Top
(
	input  wire [4:0]   okUH,
	output wire [2:0]   okHU,
	inout  wire [31:0]  okUHU,
	inout  wire         okAA,

	input  wire         sys_clk_p,
	input  wire         sys_clk_n,

	output wire [7:0]   led
);

    wire         okClk;
    wire [112:0] okHE;
    wire [64:0]  okEH;

    function [7:0] xem7310_led;
        input [7:0] a;
        integer i;
        begin
            for(i=0; i<8; i=i+1) begin: u
                xem7310_led[i] = (a[i]==1'b1) ? (1'b0) : (1'bz);
            end
        end
        endfunction
    assign led = xem7310_led(8'haa);

    wire [31:0] ep00wire, ep01wire;
    wire [31:0] po0_ep_datain, pi0_ep_dataout;
    wire pipe_in_ready, pipe_out_ready, pi0_ep_write, po0_ep_read;

    okWireIn        wi00 (.okHE(okHE), .ep_addr(8'h00),            .ep_dataout(ep00wire));  // Reset
    okWireIn        wi01 (.okHE(okHE), .ep_addr(8'h01),            .ep_dataout(ep01wire));  // rd_en
    okBTPipeIn		pi80 (.okHE(okHE), .okEH(okEHx[ 0*65 +: 65 ]), .ep_addr(8'h80), .ep_write(pi0_ep_write), .ep_blockstrobe(), .ep_dataout(pi0_ep_dataout), .ep_ready(pipe_in_ready)); // input
    okBTPipeOut		poa0 (.okHE(okHE), .okEH(okEHx[ 1*65 +: 65 ]), .ep_addr(8'ha0), .ep_read(po0_ep_read),   .ep_blockstrobe(), .ep_datain(po0_ep_datain),   .ep_ready(pipe_out_ready)); // output

    //Block Throttle
    always @(posedge okClk) begin
        // Check for enough space in input FIFO to pipe in another block
        if(pipe_in_wr_count <= (1024-128) ) begin
            pipe_in_ready <= 1'b1;
        end
        else begin
            pipe_in_ready <= 1'b0;
        end

        // Check for enough space in output FIFO to pipe out another block
        if(pipe_out_rd_count >= 128) begin
            pipe_out_ready <= 1'b1;
        end
        else begin
            pipe_out_ready <= 1'b0;
        end
    end

    wire clk, cache_rd_en, pipe_in_full, cache_empty, cache_valid;
    wire [255:0] cache_data;
    wire [6:0] pipe_in_rd_count;
    wire [9:0] pipe_in_wr_count;
    fifo_w32_1024_r256_128 okPipeIn_fifo (
	.rst(ep00wire),
	.wr_clk(okClk),
	.rd_clk(clk),
	.din(pi0_ep_dataout), // Bus [31 : 0]
	.wr_en(pi0_ep_write),
	.rd_en(cache_rd_en),
	.dout(cache_data), // Bus [256 : 0]
	.full(pipe_in_full),
	.empty(cache_empty),
	.valid(cache_valid),
	.rd_data_count(pipe_in_rd_count), // Bus [6 : 0]
	.wr_data_count(pipe_in_wr_count)); // Bus [9 : 0]

    wire CLKMi, EN_STREAM, write_enable;
    wire [20:1] MSTREAM;
    wire [2:0] wireNumPat;
    wire [63:0] patt_out;
    assign wireNumPat = 2;
    patternToSensors_v0 u_patternToSensors(				
    .clk(clk), 	//clk for reading mstream
    .stream_clk(CLKMi),  //clk for writing pattern
    .reset(ep00wire),		
            
    .Num_Pat(wireNumPat), // just put 2 if no clue
    .MSTREAMOUT(MSTREAM[20:1]),	// unused in our case
    .stream_en_i(ep01wire),
    .stream_en_o(EN_STREAM),
                
    //flags for the fifo containing input MSTREAM32 data
    .MSTREAM32(cache_data),
    .empty(cache_empty),
    .valid(cache_valid),
    .rd_en(cache_rd_en),

    .DO(patt_out),
    .valid_fifo(write_enable));

    wire pipe_out_full, pipe_out_empty;
    wire [9:0] pipe_out_rd_count;
    wire [6:0] pipe_out_wr_count;
    fifo_w64_128_r32_256 okPipeOut_fifo (
	.rst(ep00wire),
	.wr_clk(clk),
	.rd_clk(okClk),
	.din(patt_out), // Bus [64 : 0]
	.wr_en(write_enable),
	.rd_en(po0_ep_read),
	.dout(po0_ep_datain), // Bus [31 : 0]
	.full(pipe_out_full),
	.empty(pipe_out_empty),
	.valid(),   // can connect this to ready signal of pipeout
	.rd_data_count(pipe_out_rd_count), // Bus [9 : 0]
	.wr_data_count(pipe_out_wr_count)); // Bus [6 : 0]

endmodule