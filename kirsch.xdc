################################################################################
# IO constraints
################################################################################
# clk48:0
set_property LOC D4 [get_ports {clk48}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk48}]

# led:0
set_property LOC J16 [get_ports {led}]
set_property IOSTANDARD LVCMOS33 [get_ports {led}]

# sys_rst_n:0
set_property LOC P14 [get_ports {sys_rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_rst_n}]

# aud_optical:0
set_property LOC B1 [get_ports {aud_optical}]
set_property IOSTANDARD LVCMOS33 [get_ports {aud_optical}]

# sdram_clock:0
set_property LOC C8 [get_ports {sdram_clock}]
set_property IOSTANDARD LVTTL [get_ports {sdram_clock}]

# serial:0.tx
set_property LOC R16 [get_ports {serial_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {serial_tx}]

# serial:0.rx
set_property LOC R15 [get_ports {serial_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {serial_rx}]

# sdram:0.a
set_property LOC D15 [get_ports {sdram_a[0]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[0]}]

# sdram:0.a
set_property LOC D16 [get_ports {sdram_a[1]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[1]}]

# sdram:0.a
set_property LOC E15 [get_ports {sdram_a[2]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[2]}]

# sdram:0.a
set_property LOC E16 [get_ports {sdram_a[3]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[3]}]

# sdram:0.a
set_property LOC C9 [get_ports {sdram_a[4]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[4]}]

# sdram:0.a
set_property LOC D9 [get_ports {sdram_a[5]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[5]}]

# sdram:0.a
set_property LOC D8 [get_ports {sdram_a[6]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[6]}]

# sdram:0.a
set_property LOC C7 [get_ports {sdram_a[7]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[7]}]

# sdram:0.a
set_property LOC E6 [get_ports {sdram_a[8]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[8]}]

# sdram:0.a
set_property LOC D6 [get_ports {sdram_a[9]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[9]}]

# sdram:0.a
set_property LOC C16 [get_ports {sdram_a[10]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[10]}]

# sdram:0.a
set_property LOC D5 [get_ports {sdram_a[11]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[11]}]

# sdram:0.a
set_property LOC E5 [get_ports {sdram_a[12]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_a[12]}]

# sdram:0.ba
set_property LOC B9 [get_ports {sdram_ba[0]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_ba[0]}]

# sdram:0.ba
set_property LOC A8 [get_ports {sdram_ba[1]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_ba[1]}]

# sdram:0.cs_n
set_property LOC A9 [get_ports {sdram_cs_n}]
set_property IOSTANDARD LVTTL [get_ports {sdram_cs_n}]

# sdram:0.cke
set_property LOC C4 [get_ports {sdram_cke}]
set_property IOSTANDARD LVTTL [get_ports {sdram_cke}]

# sdram:0.ras_n
set_property LOC B10 [get_ports {sdram_ras_n}]
set_property IOSTANDARD LVTTL [get_ports {sdram_ras_n}]

# sdram:0.cas_n
set_property LOC A10 [get_ports {sdram_cas_n}]
set_property IOSTANDARD LVTTL [get_ports {sdram_cas_n}]

# sdram:0.we_n
set_property LOC B11 [get_ports {sdram_we_n}]
set_property IOSTANDARD LVTTL [get_ports {sdram_we_n}]

# sdram:0.dq
set_property LOC B16 [get_ports {sdram_dq[0]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[0]}]

# sdram:0.dq
set_property LOC A15 [get_ports {sdram_dq[1]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[1]}]

# sdram:0.dq
set_property LOC B15 [get_ports {sdram_dq[2]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[2]}]

# sdram:0.dq
set_property LOC A14 [get_ports {sdram_dq[3]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[3]}]

# sdram:0.dq
set_property LOC B14 [get_ports {sdram_dq[4]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[4]}]

# sdram:0.dq
set_property LOC A13 [get_ports {sdram_dq[5]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[5]}]

# sdram:0.dq
set_property LOC C13 [get_ports {sdram_dq[6]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[6]}]

# sdram:0.dq
set_property LOC A12 [get_ports {sdram_dq[7]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[7]}]

# sdram:0.dq
set_property LOC B6 [get_ports {sdram_dq[8]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[8]}]

# sdram:0.dq
set_property LOC C6 [get_ports {sdram_dq[9]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[9]}]

# sdram:0.dq
set_property LOC A5 [get_ports {sdram_dq[10]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[10]}]

# sdram:0.dq
set_property LOC B5 [get_ports {sdram_dq[11]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[11]}]

# sdram:0.dq
set_property LOC A4 [get_ports {sdram_dq[12]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[12]}]

# sdram:0.dq
set_property LOC B4 [get_ports {sdram_dq[13]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[13]}]

# sdram:0.dq
set_property LOC C3 [get_ports {sdram_dq[14]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[14]}]

# sdram:0.dq
set_property LOC A3 [get_ports {sdram_dq[15]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dq[15]}]

# sdram:0.dm
set_property LOC B12 [get_ports {sdram_dm[0]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dm[0]}]

# sdram:0.dm
set_property LOC A7 [get_ports {sdram_dm[1]}]
set_property IOSTANDARD LVTTL [get_ports {sdram_dm[1]}]

# ddmi:0.clk_p
set_property LOC F2 [get_ports {ddmi_clk_p}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_clk_p}]

# ddmi:0.clk_n
set_property LOC E1 [get_ports {ddmi_clk_n}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_clk_n}]

# ddmi:0.data0_p
set_property LOC G2 [get_ports {ddmi_data0_p}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_data0_p}]

# ddmi:0.data0_n
set_property LOC G1 [get_ports {ddmi_data0_n}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_data0_n}]

# ddmi:0.data1_p
set_property LOC H2 [get_ports {ddmi_data1_p}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_data1_p}]

# ddmi:0.data1_n
set_property LOC H1 [get_ports {ddmi_data1_n}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_data1_n}]

# ddmi:0.data2_p
set_property LOC K1 [get_ports {ddmi_data2_p}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_data2_p}]

# ddmi:0.data2_n
set_property LOC J1 [get_ports {ddmi_data2_n}]
set_property IOSTANDARD TMDS_33 [get_ports {ddmi_data2_n}]

# usb_host:0.dp
set_property LOC R5 [get_ports {usb_host_dp[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_host_dp[0]}]

# usb_host:0.dp
set_property LOC T7 [get_ports {usb_host_dp[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_host_dp[1]}]

# usb_host:0.dm
set_property LOC T5 [get_ports {usb_host_dm[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_host_dm[0]}]

# usb_host:0.dm
set_property LOC T8 [get_ports {usb_host_dm[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_host_dm[1]}]

# sdcard:0.cd
set_property LOC J15 [get_ports {sdcard_cd}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_cd}]

# sdcard:0.clk
set_property LOC G16 [get_ports {sdcard_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_clk}]

# sdcard:0.cmd
set_property LOC F14 [get_ports {sdcard_cmd}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_cmd}]

# sdcard:0.data
set_property LOC G15 [get_ports {sdcard_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_data[0]}]

# sdcard:0.data
set_property LOC H16 [get_ports {sdcard_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_data[1]}]

# sdcard:0.data
set_property LOC E13 [get_ports {sdcard_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_data[2]}]

# sdcard:0.data
set_property LOC F15 [get_ports {sdcard_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdcard_data[3]}]

################################################################################
# Design constraints
################################################################################

################################################################################
# Clock constraints
################################################################################


create_clock -name clk48 -period 20.833 [get_ports clk48]

################################################################################
# False path constraints
################################################################################


set_false_path -quiet -through [get_nets -hierarchical -filter {mr_ff == TRUE}]

set_false_path -quiet -to [get_pins -filter {REF_PIN_NAME == PRE} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE || ars_ff2 == TRUE}]]

set_max_delay 2 -quiet -from [get_pins -filter {REF_PIN_NAME == C} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE}]] -to [get_pins -filter {REF_PIN_NAME == D} -of_objects [get_cells -hierarchical -filter {ars_ff2 == TRUE}]]
