// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="multi,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.370000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=42,HLS_VERSION=2018_3}" *)

module multi (
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A,
        B,
        C
);


input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] A;
input  [7:0] B;
output  [15:0] C;

wire  signed [7:0] tmp_4_fu_51_p0;
wire  signed [7:0] tmp_4_fu_51_p1;

assign C = ($signed(tmp_4_fu_51_p0) * $signed(tmp_4_fu_51_p1));

assign ap_done = ap_start;

assign ap_idle = 1'b1;

assign ap_ready = ap_start;

assign tmp_4_fu_51_p0 = B;

assign tmp_4_fu_51_p1 = A;

endmodule //multi
