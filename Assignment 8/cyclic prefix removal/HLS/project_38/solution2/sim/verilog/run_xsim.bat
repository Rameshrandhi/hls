
set PATH=
call C:/Xilinx/Vivado/2022.2/bin/xelab xil_defaultlib.apatb_cyclic_prefix_removal_top glbl -Oenable_linking_all_libraries  -prj cyclic_prefix_removal.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_15 --lib "ieee_proposed=./ieee_proposed" -s cyclic_prefix_removal 
call C:/Xilinx/Vivado/2022.2/bin/xsim --noieeewarnings cyclic_prefix_removal -tclbatch cyclic_prefix_removal.tcl 

