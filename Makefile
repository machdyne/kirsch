blinky_openxc7:
	mkdir -p output
	yosys -p "synth_xilinx -flatten -abc9 -arch xc7 -top blinky_kirsch; write_json output/top.json" rtl/blinky_kirsch.v
	nextpnr-xilinx --chipdb /usr/local/share/prjxray/xc7a35tftg256.bin --xdc kirsch.xdc --json output/top.json --fasm output/top.fasm
	fasm2frames --part xc7a35tftg256-2 --db-root /usr/local/share/prjxray/artix7 output/top.fasm > output/top.frames
	xc7frames2bit --part_file /usr/local/share/prjxray/artix7/xc7a35tftg256-2/part.yaml --part_name xc7a35tftg256-2 --frm_file output/top.frames --output_file output/blinky.bit

blinky_vivado:
	mkdir -p output
	cd output && vivado -mode batch -source ../scripts/blinky_kirsch.tcl
