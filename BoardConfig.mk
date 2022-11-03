#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oneplus7pro

# Display
TARGET_SCREEN_DENSITY := 560

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Sensors
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_X := 1000
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_Y := 260

# Include the proprietary files BoardConfig.
-include vendor/oneplus/oneplus7pro/BoardConfigVendor.mk
