#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from dipper device
$(call inherit-product, device/xiaomi/dipper/device.mk)

PRODUCT_DEVICE := dipper
PRODUCT_NAME := lineage_dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 10 QKQ1.190828.002 V12.0.3.0.QEAMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/dipper/dipper:10/QKQ1.190828.002/V12.0.3.0.QEAMIXM:user/release-keys
