#
# Copyright 2016 The Android Open Source Project
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

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53


# Init
#TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff cnsscore.pcie_link_down_panic=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/twrp/XT1650/dt.img
TARGET_PREBUILT_KERNEL := device/twrp/XT1650/kernel


TARGET_SPECIFIC_HEADER_PATH := device/twrp/XT1650/include


# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Keymaster - Wait for qseecom to load
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE    := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 5704253440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57361805312
BOARD_FLASH_BLOCK_SIZE := 262144
# (BOARD_KERNEL_PAGESIZE * 64)

# more partitions
#BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
#BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59718467072
#BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G
#BOARD_OEMIMAGE_PARTITION_SIZE      := 133169152

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# more
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_OEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true


#TWRP flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INCLUDE_CRYPTO := true

#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_NO_USB_STORAGE := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
#BOARD_HAS_NO_REAL_SDCARD := true

#TW_EXTERNAL_STORAGE_PATH:= "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT:= "external_sd"


#TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_DEFAULT_BRIGHTNESS := 80
#BOARD_HAS_FLIPPED_SCREEN := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_TARGET_USES_QCOM_BSP := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TWRP_INCLUDE_LOGCAT := true




#other flags for TWRP by self

#can reboot edl
#TW_HAS_REBOOT_EDL := true

#can reboot testmode
#TW_HAS_REBOOT_TESTMODE := true

#KEY_HOMEPAGE=172 or KEY_HOME=102 , default is KEY_HOME
#TW_DEFAULT_HOME_KEY := 172

#display the name on logo screen and main page.defaut use $(PRODUCT_MODEL)
TW_DEFAULT_DEVICE_NAME := "Moto Z"







TARGET_RECOVERY_FSTAB := device/twrp/XT1650/twrp.fstab

