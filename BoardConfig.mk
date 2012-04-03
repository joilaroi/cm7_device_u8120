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

# inherit from the proprietary version
-include vendor/huawei/u8120/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8120/include

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# ARMv6-compatible processor rev 2 (v6l)
# CPU
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI := armeabi-v6j

# Target properties
TARGET_OTA_ASSERT_DEVICE := u8120,u8100,u8109,u8110,ascend
TARGET_BOOTLOADER_BOARD_NAME := u8120

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

## GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8120

# Browser
JS_ENGINE := v8

# MISC
WITH_JIT := true
ENABLE_JSC_JIT := true
WITH_DEXPREOPT := true

# USB mass storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/u8120/UsbController.cpp
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8120/recovery/recovery_ui.c
BOARD_LDPI_RECOVERY := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DATADATA := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# RIL
TARGET_PROVIDES_LIBRIL := true

# Graphics
COPYBIT_MSM7K := true 
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/u8120/prebuilt/lib/egl/egl.cfg
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
BOARD_HAS_LIMITED_EGL := true
TARGET_ELECTRONBEAM_FRAMES := 6

# Wifi
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_ARG 	    := "softmac_file=/system/wifi/softmac"
WIFI_DRIVER_MODULE_NAME     := ar6000
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8120
BOARD_KERNEL_PAGESIZE := 4096

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 178257920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 174718976

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144

