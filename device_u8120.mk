#
# Copyright (C) 2011 The Android Open Source Project
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

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    gps.u8120 \
    libOmxCore \
    libOmxVidEnc \
    lights.msm7k \
    copybit.msm7k \
    u8120Parts \
    abtfilt \
    setup_fs \
    make_ext4fs \
    e2fsck \
    dexpreopt

DISABLE_DEXPREOPT := false

# Gallery 2D
PRODUCT_PACKAGES += Gallery

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8120/prebuilt/init.u8120.rc:root/init.u8120.rc \
    device/huawei/u8120/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/modules/ar6000.ko:system/wifi/ar6000.ko \
    device/huawei/u8120/prebuilt/modules/zram.ko:system/lib/modules/zram.ko

# AR6000 related
PRODUCT_COPY_FILES += \
    device/huawei/u8120/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    device/huawei/u8120/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/huawei/u8120/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    device/huawei/u8120/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/huawei/u8120/firmware/device.bin:system/wifi/device.bin \
    device/huawei/u8120/firmware/eeprom.bin:system/wifi/eeprom.bin \
    device/huawei/u8120/firmware/eeprom.data:system/wifi/eeprom.data

# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8120/prebuilt/bin/hostapd:system/bin/hostapd \
    device/huawei/u8120/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8120/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

# GPS
PRODUCT_COPY_FILES += \
     device/huawei/u8120/prebuilt/etc/gps.conf:system/etc/gps.conf

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8120/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \

# Bootsound 
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/bin/bootsound:system/bin/bootsound \
    device/huawei/u8120/prebuilt/media/poweron.ogg:system/media/poweron.ogg

# Keylayout
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8120/prebuilt/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8120/prebuilt/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# USB mounting
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8120/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8120/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Huawei M865 apps
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/app/HuaweiBackupV2.1.8.apk:system/app/HuaweiBackupV2.1.8.apk \
    device/huawei/u8120/prebuilt/app/HwWallpaperChooser.apk:system/app/HwWallpaperChooser.apk \
    device/huawei/u8120/prebuilt/app/HuaweiLauncher2.apk:system/app/HuaweiLauncher2.apk

# Hardware permissions M865
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/base/data/etc/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml

# rmt_storage
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/bin/rmt_storage:system/bin/rmt_storage

# port-bridge
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/bin/port-bridge:system/bin/port-bridge

# Zipalign, tweaks and MAC
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/init.d/02huawei:system/etc/init.d/02huawei \
    device/huawei/u8120/prebuilt/bin/zipalign:system/bin/zipalign \
    device/huawei/u8120/prebuilt/etc/init.d/70zipalign:system/etc/init.d/70zipalign \
    device/huawei/u8120/prebuilt/etc/check_property.sh:system/etc/check_property.sh \
    device/huawei/u8120/firmware/softmac:system/wifi/softmac

# Update hosts file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/hosts:system/etc/hosts 

# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# RIL properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/smd0 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false

# Networking properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=60 \

# Performance & graphics properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=24m \
    persist.sys.purgeable_assets=1 \
    persist.sys.rotationanimation=0 \
    persist.sys.scrollingcache=3 \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=0 \
    persist.sys.nobootsound=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.opengles.version=65537 \
    ro.sf.lcd_density=120 \
    ro.vold.umsdirtyratio=20

# Touchscreen properties
PRODUCT_PROPERTY_OVERRIDES += \
    view.fading_edge_length=8 \
    view.minimum_fling_velocity=25 \
    view.scroll_friction=0.008 \
    view.touch_slop=15

# Compcache properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

PRODUCT_COPY_FILES += device/huawei/u8120/prebuilt/kernel:kernel

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_ww_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8120/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := U8120
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
