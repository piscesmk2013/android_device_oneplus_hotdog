#
# Copyright (C) 2018-2019 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := oneplus
DEVICE_PATH := device/oneplus/hotdog

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG := vendor/sm8150-perf_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_ODMIMAGE_PARTITION_SIZE := 104857600
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115601780736
ifneq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1887436800
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif
BOARD_SUPER_PARTITION_SIZE := 15032385536
BOARD_SUPER_PARTITION_GROUPS := oneplus_dynamic_partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system vendor
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 7511998464
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Fingerprint
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_X = 610
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_Y = 2618
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_SIZE = 220

# Sensors
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_X := 900
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_Y := 260

# Verified Boot
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
