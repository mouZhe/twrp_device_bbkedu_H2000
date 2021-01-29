#
# Copyright 2017 The Android Open Source Project
#
# Copyright (C) 2019-2020 OrangeFox Recovery Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := device/bbkedu/H2000

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ENABLE_CPUSETS := true
TARGET_CPU_SMP := true

TARGET_USES_64_BIT_BINDER := true
TARGET_USES_64_BIT_BCMDHD := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := rk30sdk
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00080000 --ramdisk_offset 0x01c00000 --tags_offset 0xffffffff
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384
BOARD_KERNEL_TAGS_OFFSET := 0xffc88000
BOARD_RAMDISK_OFFSET     := 0x01c00000

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Platform
TARGET_BOARD_PLATFORM := rk3288
TARGET_BOARD_PLATFORM_GPU := mali-t760

# Partitions
BOARD_FLASH_BLOCK_SIZE := 524288
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5368709120
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP specific build flags
TARGET_OTA_ASSERT_DEVICE := H2000
TW_BRIGHTNESS_PATH := "/sys/devices/backlight.29/backlight/rk28_bl/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
TW_INCLUDE_NTFS_3G := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_USE_TOOLBOX := true
TW_INCLUDE_CRYPTO := true
TW_NO_SCREEN_TIMEOUT := true
TWHAVE_SELINUX := true
TW_INCLUDE_FB2PNG := true
TW_IGNORE_MISC_WIPE_DATA := false

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# SHRP Feature
SHRP_PATH := device/bbkedu/H2000
SHRP_MAINTAINER := mouZhe
SHRP_DEVICE_CODE := H2000
SHRP_REC_TYPE := Normal
SHRP_DEVICE_TYPE := A_Only
SHRP_EDL_MODE := 0
SHRP_DARK := true
SHRP_FLASH := 1
SHRP_NO_SAR_AUTOMOUNT：= true
SHRP_INTERNAL：= /sdcard
SHRP_OTG：= /usb_otg
SHRP_REC := /dev/block/bootdevice/by-name/recovery