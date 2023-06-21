// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jun 21 11:56:38 2023
// Host        : AlexYuan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexy/Documents/ISML_Research_Summer_2023/FIFO-Pipeline/FIFO-Pipeline.gen/sources_1/ip/fifo_w64_128_r32_256/fifo_w64_128_r32_256_sim_netlist.v
// Design      : fifo_w64_128_r32_256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_w64_128_r32_256,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module fifo_w64_128_r32_256
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    rd_data_count,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output [7:0]rd_data_count;
  output [6:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [63:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [7:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire valid;
  wire wr_clk;
  wire [6:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "7" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "128" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "7" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_w64_128_r32_256_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[6:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_w64_128_r32_256_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_w64_128_r32_256_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_w64_128_r32_256_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_w64_128_r32_256_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_w64_128_r32_256_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_w64_128_r32_256_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 122528)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
