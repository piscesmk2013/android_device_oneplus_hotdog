#
# Copyright (C) 2019 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1910
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201005.004/6782484:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7TPro \
    PRODUCT_NAME=OnePlus7TPro \
    PRIVATE_BUILD_DESC="OnePlus7TPro-user 10 QKQ1.190716.003 2009281542 release-keys"

PRODUCT_ODM_PROPERTY_BLACKLIST += \
    ro.product.odm.model

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.system.model

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
