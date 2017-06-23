PR_append = ".tisdk2"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:${THISDIR}/files:"

require linux-ti-staging-4.9-patches.inc
require tisdk-cmem.inc

SRC_URI_append = " file://jailhouse.cfg"

KERNEL_CONFIG_FRAGMENTS_append_am57xx-evm = " ${WORKDIR}/jailhouse.cfg"

KERNEL_DEVICETREE_append_am57xx-evm = " am572x-evm-jailhouse.dtb am572x-idk-jailhouse.dtb"

RDEPENDS_kernel-base_append_am57xx-evm = " pruhsr-fw pruprp-fw"
