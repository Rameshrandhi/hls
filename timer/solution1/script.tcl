############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project timer
set_top timer
add_files Downloads/timer/timer-vitishls-files/timer.cpp
add_files Downloads/timer/timer-vitishls-files/timer.h
add_files -tb Downloads/timer/timer-vitishls-files/timer-tb.cpp
add_files -tb Downloads/timer/timer-vitishls-files/timer-tb.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./timer/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
