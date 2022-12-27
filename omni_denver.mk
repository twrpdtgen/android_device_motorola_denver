#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from denver device
$(call inherit-product, device/motorola/denver/device.mk)

PRODUCT_DEVICE := denver
PRODUCT_NAME := omni_denver
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="denver_global-user 11 S2RES32.29-16-1-9 1e846 release-keys"

BUILD_FINGERPRINT := motorola/denver_global/denver:11/S2RES32.29-16-1-9/1e846:user/release-keys
