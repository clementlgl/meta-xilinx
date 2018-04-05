include u-boot-spl-zynq-init.inc

# u-boot 2016.11 has support for these
HAS_PLATFORM_INIT ??= " \
		zynq_microzed_config \
		zynq_zed_config \
		zynq_zc702_config \
		zynq_zc706_config \
		zynq_zybo_config \
		zynq_minized_config \
		"
FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot-xlnx:"

SRC_URI_append = " \
                file://Add-zynq-minized-board-support.patch \
                "

