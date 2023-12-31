// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jun 21 11:31:03 2023
// Host        : AlexYuan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alexy/Documents/ISML_Research_Summer_2023/FIFO-Pipeline/FIFO-Pipeline.gen/sources_1/ip/fifo_w256_1024_r64_4096_ib/fifo_w256_1024_r64_4096_ib_stub.v
// Design      : fifo_w256_1024_r64_4096_ib
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *)
module fifo_w256_1024_r64_4096_ib(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  almost_full, empty, valid, rd_data_count, wr_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[255:0],wr_en,rd_en,dout[63:0],full,almost_full,empty,valid,rd_data_count[11:0],wr_data_count[9:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [255:0]din;
  input wr_en;
  input rd_en;
  output [63:0]dout;
  output full;
  output almost_full;
  output empty;
  output valid;
  output [11:0]rd_data_count;
  output [9:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
