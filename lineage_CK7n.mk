#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/CK7n/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_CK7n
PRODUCT_DEVICE := CK7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CK7n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=CK7n \
    BuildFingerprint=TECNO/CK7n-GL/TECNO-CK7n:14/UP1A.231005.007/250218V1430:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
