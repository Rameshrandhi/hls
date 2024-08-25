// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="zadoff_chu_generator_hls_zadoff_chu_generator_hls,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.042000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=4732,HLS_SYN_LUT=6133,HLS_VERSION=2022_2}" *)

module zadoff_chu_generator_hls (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_stream_TDATA,
        out_stream_TVALID,
        out_stream_TREADY,
        length_r,
        u,
        tlast_TDATA,
        tlast_TVALID,
        tlast_TREADY
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [63:0] out_stream_TDATA;
output   out_stream_TVALID;
input   out_stream_TREADY;
input  [31:0] length_r;
input  [31:0] u;
output  [7:0] tlast_TDATA;
output   tlast_TVALID;
input   tlast_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tlast_TVALID;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    tlast_TDATA_blk_n;
wire    ap_CS_fsm_state7;
wire   [63:0] grp_fu_81_p1;
reg   [63:0] conv3_reg_100;
wire    ap_CS_fsm_state4;
wire   [63:0] grp_fu_85_p1;
reg   [63:0] conv5_reg_105;
wire    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start;
wire    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_done;
wire    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_idle;
wire    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_ready;
wire    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TREADY;
wire   [63:0] grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TDATA;
wire    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TVALID;
reg    grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start_reg = 1'b0;
end

zadoff_chu_generator_hls_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1 grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start),
    .ap_done(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_done),
    .ap_idle(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_idle),
    .ap_ready(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_ready),
    .out_stream_TREADY(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TREADY),
    .length_r(length_r),
    .conv3(conv3_reg_100),
    .conv5(conv5_reg_105),
    .out_stream_TDATA(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TDATA),
    .out_stream_TVALID(grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TVALID)
);

zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32ns_64_4_no_dsp_1_U38(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(u),
    .ce(1'b1),
    .dout(grp_fu_81_p1)
);

zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32ns_64_4_no_dsp_1_U39(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(length_r),
    .ce(1'b1),
    .dout(grp_fu_85_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start_reg <= 1'b1;
        end else if ((grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_ready == 1'b1)) begin
            grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        conv3_reg_100 <= grp_fu_81_p1;
        conv5_reg_105 <= grp_fu_85_p1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((tlast_TREADY == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((tlast_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((tlast_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tlast_TDATA_blk_n = tlast_TREADY;
    end else begin
        tlast_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tlast_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        tlast_TVALID = 1'b1;
    end else begin
        tlast_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((tlast_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start = grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_ap_start_reg;

assign grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TREADY = (out_stream_TREADY & ap_CS_fsm_state6);

assign out_stream_TDATA = grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TDATA;

assign out_stream_TVALID = grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64_out_stream_TVALID;

assign tlast_TDATA = 8'd1;

endmodule //zadoff_chu_generator_hls
