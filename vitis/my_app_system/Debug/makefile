#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vitis/hwplat/export/hwplat/hwplat.xpfm
SYS_CONFIG = hwplat
DOMAINS = standalone_ps7_cortexa9_0
BIF_PATH = G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vitis/my_app_system/Debug/system.bif

BITSTREAM_PATH = G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vitis/my_app/_ide/bitstream/radio_periph_lab.bit
SD_FILES = --elf G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vitis/my_app/Debug/my_app.elf,ps7_cortexa9_0

#
# primary build targets
#

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 57622 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean

all: package


