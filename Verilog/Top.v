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

endmodule