#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

# Overlays
PRODUCT_PACKAGES += \
    AlertSliderOverlay \
    FlamingoOPlus7ProFrameworks \
    FlamingoOPlus7ProSystemUI \
    OPlus7ProFrameworks \
    OPlus7ProSettingsProvider \
    OPlus7ProSettings \
    OPlus7ProSystemUI

# Shipping API
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/oneplus7pro/oneplus7pro-vendor.mk)
