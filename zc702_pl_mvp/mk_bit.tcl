package require Vivado

create_project -in_memory
set_msg_config -id "Project 1-153" -suppress
set_property BOARD_PART xilinx.com:zc702:part0:1.4 [current_project]

foreach sv [glob -nocomplain src/*.sv] {read_verilog -sv ${sv}}
foreach xdc [glob -nocomplain src/*.xdc] {read_xdc ${xdc}}

synth_design -top zc702_pl_mvp_shell -lint -file lint.txt
synth_design -top zc702_pl_mvp_shell -debug_log -verbose
opt_design -debug_log -verbose

place_design -timing_summary -debug_log -verbose
phys_opt_design
report_io -file io.txt
report_phys_opt -file phys_opt-place.txt
report_utilization -file utilization-placed.txt

route_design -tns_cleanup -debug_log -verbose
phys_opt_design
report_phys_opt -file phys_opt-route.txt
report_utilization -file utilization-routed.txt
report_timing_summary -check_timing_verbose -file timing.txt

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]
write_bitstream -force -file zc702_pl_mvp.bit  -verbose
write_debug_probes -force [string map {bit ltx} zc702_pl_mvp.bit] -verbose
write_checkpoint -force prj_name.dcp
