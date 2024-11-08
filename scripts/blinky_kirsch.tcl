# Create Project

create_project -force -name kirsch -part xc7a35tftg256-1
set_msg_config -id {Common 17-55} -new_severity {Warning}

# Add project commands


# Add Sources

read_verilog {../rtl/blinky_kirsch.v}

# Add EDIFs


# Add IPs


# Add constraints

read_xdc ../kirsch.xdc
set_property PROCESSING_ORDER EARLY [get_files kirsch.xdc]

# Add pre-synthesis commands


# Synthesis

synth_design -directive default -top blinky_kirsch -part xc7a35tftg256-1

# Synthesis report

report_timing_summary -file kirsch_timing_synth.rpt
report_utilization -hierarchical -file kirsch_utilization_hierarchical_synth.rpt
report_utilization -file kirsch_utilization_synth.rpt
write_checkpoint -force kirsch_synth.dcp

# Add pre-optimize commands


# Optimize design

opt_design -directive default

# Add pre-placement commands


# Placement

place_design -directive default

# Placement report

report_utilization -hierarchical -file kirsch_utilization_hierarchical_place.rpt
report_utilization -file kirsch_utilization_place.rpt
report_io -file kirsch_io.rpt
report_control_sets -verbose -file kirsch_control_sets.rpt
report_clock_utilization -file kirsch_clock_utilization.rpt
write_checkpoint -force kirsch_place.dcp

# Add pre-routing commands


# Routing

route_design -directive default
phys_opt_design -directive default
write_checkpoint -force kirsch_route.dcp

# Routing report

report_timing_summary -no_header -no_detailed_paths
report_route_status -file kirsch_route_status.rpt
report_drc -file kirsch_drc.rpt
report_timing_summary -datasheet -max_paths 10 -file kirsch_timing.rpt
report_power -file kirsch_power.rpt
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]

# Bitstream generation

write_bitstream -force blinky.bit 
write_cfgmem -force -format bin -interface spix1 -size 16 -loadbit "up 0x0 kirsch.bit" -file kirsch.bin

# End

quit
