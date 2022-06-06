#!/bin/bash
while ! ~/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_Programmer_CLI -c port=SWD mode=UR -rdu -w ./firmware-blink.bin 0x08000000
do
	echo "Trying again. Press [CTRL+C] to stop.."
done
