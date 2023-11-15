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

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

PRODUCT_DEVICE := mondrian
PRODUCT_NAME := lineage_mondrian
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23013RK75C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mondrian-user 12 SKQ1.230401.001 V816.0.23.11.8.DEV release-keys"

BUILD_FINGERPRINT := Redmi/mondrian/mondrian:12/SKQ1.230401.001/V816.0.23.11.8.DEV:user/release-keys
