#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/vigor/prebuilt/etc/gps.conf:system/etc/gps.conf

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/vigor/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/vigor/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/vigor/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/vigor/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/vigor/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt

## ramdisk stuffs
PRODUCT_COPY_FILES += \
    device/htc/vigor/ramdisk/init.vigor.rc:root/init.vigor.rc \
    device/htc/vigor/ramdisk/ueventd.vigor.rc:root/ueventd.vigor.rc \
    device/htc/vigor/ramdisk/init.vigor.usb.rc:root/init.vigor.usb.rc \
    device/htc/vigor/default.prop:root/default.prop \
    device/htc/vigor/sbin/adbd:root/sbin/adbd \
    device/htc/vigor/sbin/gzip_recvy:root/sbin/gzip_recvy \
    device/htc/vigor/sbin/htc_ebdlogd_recvy:root/sbin/htc_ebdlogd_recvy \
    device/htc/vigor/sbin/logcat2_recvy:root/sbin/logcat2_recvy \
    device/htc/vigor/sbin/mfgsrv:root/sbin/mfgsrv \
    device/htc/vigor/sbin/tpd:root/sbin/tpd \
    device/htc/vigor/sbin/ueventd:root/sbin/ueventd
    
# Misc
PRODUCT_COPY_FILES += \
    device/htc/vigor/prebuilt/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/htc/vigor/prebuilt/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/htc/vigor/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf


## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/htc/vigor/vigor-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-verizon \
	ro.com.google.locationfeatures=1 \
	ro.cdma.home.operator.numeric = 310012 \
	ro.cdma.home.operator.alpha = Verizon

## Misc
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1

## Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/vigor/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

## Other
PRODUCT_PACKAGES += \
   libstagefrighthw \
   Stk \

## Misc
PRODUCT_PACKAGES += \
    gps.vigor \
    librs_jni \
    com.android.future.usb.accessory \
    Torch

## CM dsp manager
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp

## DSP Audio
PRODUCT_COPY_FILES += \
    device/htc/vigor/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/vigor/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/vigor/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/vigor/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/vigor/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/vigor/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/vigor/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    device/htc/vigor/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/vigor/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/vigor/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/vigor/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/vigor/prebuilt/audio/libacdbmapper.so:obj/lib/libacdbmapper.so \
    device/htc/vigor/prebuilt/audio/libacdbloader.so:obj/lib/libacdbloader.so \
    device/htc/vigor/prebuilt/audio/libacdbmapper.so:system/lib/libacdbmapper.so \
    device/htc/vigor/prebuilt/audio/libacdbloader.so:system/lib/libacdbloader.so

## Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/vigor/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/vigor/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/vigor/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/vigor/keychars/vigor-keypad.kcm.bin:system/usr/keychars/vigor-keypad.kcm.bin \
    device/htc/vigor/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/vigor/keylayout/vigor-keypad.kl:system/usr/keylayout/vigor-keypad.kl \
    device/htc/vigor/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/vigor/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/htc/vigor/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/vigor/prebuilt/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

## Firmware
PRODUCT_COPY_FILES += \
    device/htc/vigor/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb \
    device/htc/vigor/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/vigor/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/vigor/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw 

##  Wifi
PRODUCT_COPY_FILES += \
    device/htc/vigor/prebuilt/system/lib/modules/bcm4330.ko:system/lib/modules/bcm4330.ko

BOARD_WLAN_DEVICE_REV := bcm4330_b2
WIFI_BAND := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# QC thermald config
PRODUCT_COPY_FILES += device/htc/vigor/prebuilt/thermald.conf:system/etc/thermald.conf

## we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

## device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US

## misc
PRODUCT_COPY_FILES += \
    device/htc/vigor/prebuit/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/vigor/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

## Kernel and modules
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/vigor/ramdisk/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

## HAX
PRODUCT_COPY_FILES += \
    device/htc/vigor/prebuilt/libcryp98.so:system/lib/libcryp98.so

$(call inherit-product-if-exists, vendor/htc/vigor/vigor-vendor.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

PRODUCT_COPY_FILES += \
     device/htc/vigor/media_profiles.xml:system/etc/media_profiles.xml

## media profiles and capabilities spec
$(call inherit-product, device/htc/vigor/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/vigor/media_htcaudio.mk)

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

# Audio

PRODUCT_PACKAGES += \
audio_policy.msm8660 \
audio.primary.msm8660 

PRODUCT_NAME := htc_vigor
PRODUCT_DEVICE := vigor