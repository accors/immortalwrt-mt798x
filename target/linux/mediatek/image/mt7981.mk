KERNEL_LOADADDR := 0x48080000

define Device/mt7981-spim-nor-rfb
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-spim-nor-rfb
  DEVICE_DTS := mt7981-spim-nor-rfb
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-spim-nor-rfb
endef
TARGET_DEVICES += mt7981-spim-nor-rfb

define Device/mt7981-spim-nand-2500wan-gmac2
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-spim-nand-2500wan-gmac2
  DEVICE_DTS := mt7981-spim-nand-2500wan-gmac2
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-spim-snand-2500wan-gmac2-rfb
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-spim-nand-2500wan-gmac2

define Device/mt7981-spim-nand-rfb
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-spim-nand-rfb
  DEVICE_DTS := mt7981-spim-nand-rfb
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-spim-snand-rfb
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-spim-nand-rfb

define Device/mt7981-spim-nand-gsw
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-spim-nand-gsw
  DEVICE_DTS := mt7981-spim-nand-gsw
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-rfb,ubi
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-spim-nand-gsw

define Device/mt7981-emmc-rfb
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-emmc-rfb
  DEVICE_DTS := mt7981-emmc-rfb
  SUPPORTED_DEVICES := mediatek,mt7981-emmc-rfb
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  DEVICE_PACKAGES := mkf2fs e2fsprogs blkid blockdev losetup kmod-fs-ext4 \
		     kmod-mmc kmod-fs-f2fs kmod-fs-vfat kmod-nls-cp437 \
		     kmod-nls-iso8859-1
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-emmc-rfb

define Device/mt7981-sd-rfb
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-sd-rfb
  DEVICE_DTS := mt7981-sd-rfb
  SUPPORTED_DEVICES := mediatek,mt7981-sd-rfb
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  DEVICE_PACKAGES := mkf2fs e2fsprogs blkid blockdev losetup kmod-fs-ext4 \
		     kmod-mmc kmod-fs-f2fs kmod-fs-vfat kmod-nls-cp437 \
		     kmod-nls-iso8859-1
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-sd-rfb

define Device/mt7981-snfi-nand-2500wan-p5
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-snfi-nand-2500wan-p5
  DEVICE_DTS := mt7981-snfi-nand-2500wan-p5
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-snfi-snand-pcie-2500wan-p5-rfb
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-snfi-nand-2500wan-p5

define Device/mt7981-fpga-spim-nor
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-fpga-spim-nor
  DEVICE_DTS := mt7981-fpga-spim-nor
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-fpga-nor
endef
TARGET_DEVICES += mt7981-fpga-spim-nor

define Device/mt7981-fpga-snfi-nand
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-fpga-snfi-nand
  DEVICE_DTS := mt7981-fpga-snfi-nand
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-fpga-snfi-snand
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-fpga-snfi-nand

define Device/mt7981-fpga-spim-nand
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-fpga-spim-nand
  DEVICE_DTS := mt7981-fpga-spim-nand
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := mediatek,mt7981-fpga-spim-snand
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-fpga-spim-nand

define Device/mt7981-fpga-emmc
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-fpga-emmc
  DEVICE_DTS := mt7981-fpga-emmc
  SUPPORTED_DEVICES := mediatek,mt7981-fpga-emmc
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  DEVICE_PACKAGES := mkf2fs e2fsprogs blkid blockdev losetup kmod-fs-ext4 \
		     kmod-mmc kmod-fs-f2fs kmod-fs-vfat kmod-nls-cp437 \
		     kmod-nls-iso8859-1
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-fpga-emmc

define Device/mt7981-fpga-sd
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := mt7981-fpga-sd
  DEVICE_DTS := mt7981-fpga-sd
  SUPPORTED_DEVICES := mediatek,mt7981-fpga-sd
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  DEVICE_PACKAGES := mkf2fs e2fsprogs blkid blockdev losetup kmod-fs-ext4 \
		     kmod-mmc kmod-fs-f2fs kmod-fs-vfat kmod-nls-cp437 \
		     kmod-nls-iso8859-1
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-fpga-sd

define Device/mt7981-360-t7
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := 360 T7
  DEVICE_DTS := mt7981-360-t7
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := 360,t7
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 36864k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-360-t7

define Device/mt7981-360-t7-108M
  DEVICE_VENDOR := MediaTek
  DEVICE_MODEL := 360 T7 (with 108M ubi)
  DEVICE_DTS := mt7981-360-t7-108M
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := 360,t7
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 110592k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += mt7981-360-t7-108M

define Device/glinet_gl-mt2500
  DEVICE_VENDOR := GL.iNet
  DEVICE_MODEL := GL-MT2500
  DEVICE_DTS := mt7981-gl-mt2500
  SUPPORTED_DEVICES := glinet,mt2500-emmc
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  DEVICE_PACKAGES := blkid blockdev gdisk kmod-fs-f2fs kmod-mmc mkf2fs losetup mii_mgr mtk_factory_rw regs switch
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += glinet_gl-mt2500
