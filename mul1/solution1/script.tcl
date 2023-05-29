############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mul1
set_top multi
add_files header.h
add_files multiplier.cpp
add_files -tb multiplier_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./mul1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
