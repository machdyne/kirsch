# Kirsch Computer

Kirsch is an FPGA computer designed by Lone Dynamics Corporation.

![Kirsch Computer](https://github.com/machdyne/kirsch/blob/ce150d8c0c46f4245df2f3ed8568f2bf945f30c8/kirsch.png)

This repo will contain schematics, PCB layouts, pinouts, a 3D-printable case, example gateware and documentation.

Find more information on the [Kirsch product page](https://machdyne.com/product/kirsch-computer/).

## Programming Kirsch

Kirsch has a JTAG interface that can be used to program the SRAM or the included flash [MMOD](https://machdyne.com/product/mmod).

### JTAG

These examples assume you're using a "USB Blaster" JTAG cable, see the header pinout below. You will need to have [openFPGALoader](https://github.com/trabucayre/openFPGALoader) installed.

Program the configuration SRAM:

```
openFPGALoader -c usb-blaster blinky.bit
```

Program the flash MMOD:

```
openFPGALoader -f -c usb-blaster blinky.bit --fpga-part xc7a35tftg256
```

## Blinky 

Building the blinky example requires Vivado or [openxc7](https://github.com/openxc7).

Assuming they are installed, you can simply type `make blinky_openxc7` or `make blinky_vivado` to build the gateware, which will be written to output/blinky.bit. You can then use [openFPGALoader](https://github.com/trabucayre/openFPGALoader) to write the gateware to the device.

## Linux

See the [Kakao Linux](https://github.com/machdyne/kakao) repo for the latest instructions.

### Prebuilt Images

Copy the files from the `images/linux` and `images/v0` directory to the root directory of a FAT-formatted MicroSD card along with the files from the `images` directory in the [Kakao Linux](https://github.com/machdyne/kakao) repo.

Kirsch ships with LiteX gateware on the user gateware section of the MMOD that is compatible with these images. After several seconds the Linux penguin should appear on the screen (HDMI) followed by a login prompt. A serial console is also available over the USB-C port.

### Building Linux

Please follow the setup instructions in the [linux-on-litex-vexriscv](https://github.com/litex-hub/linux-on-litex-vexriscv) repo and then:

1. Build the Linux-capable gateware:

```
$ cd linux-on-litex-vexriscv
$ ./make.py --board kirsch --build
```

2. Write the gateware to the MMOD using USB DFU:

```
$ openFPGALoader -f -c usb-blaster build/kirsch/gateware/kirsch.bit --fpga-part xc7a35tftg256 
```
3. Copy the device tree binary `build/kirsch/kirsch.dtb` to a FAT-formatted MicroSD card.

4. Build the Linux kernel and root filesystem:

See the [Kakao Linux](https://github.com/machdyne/kakao?tab=readme-ov-file#optional-building-kakao-linux) repo for instructions.

5. Copy the Image and rootfs.cpio files generated in the previous step to the boot partition of the MicroSD card, in addition to the following files:

6. Copy the OpenSBI binary (included in this repo as `kirsch/images/linux/opensbi.bin`) to the MicroSD card. Alternatively, you can build this binary by following [these instructions](https://github.com/litex-hub/linux-on-litex-vexriscv#-generating-the-opensbi-binary-optional).

7. Copy `kirsch/images/linux/boot.json` to the MicroSD card.

8. Power-cycle Kirsch. After Linux has finished booting you should see a login prompt on the HDMI display.

## JTAG Header

The 3.3V JTAG header can be used to program the FPGA SRAM as well as the MMOD flash memory. It can also be used to provide power (5V) to the board.

```
1 2
3 4
5 6
```

| Pin | Signal |
| --- | ------ |
| 1 | TCK |
| 2 | TDI |
| 3 | TDO |
| 4 | TMS |
| 5 | 5V0 |
| 6 | GND |

## Board Revisions

| Revision | Notes |
| -------- | ----- |
| V0 | Initial version |

## License

The contents of this repo are released under the [Lone Dynamics Open License](LICENSE.md) with the following exceptions:

- The KiCad design files contain parts of the [kicad-pmod](https://github.com/mithro/kicad-pmod) library which is released under the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html).

- The KiCad design files may contain symbols and footprints released under other licenses; please contact us if we've failed to give proper attribution.

Note: You can use these designs for commercial purposes but we ask that instead of producing exact clones, that you either replace our trademarks and logos with your own or add your own next to ours.
