# Copyright (C) 2010 The Android Open Source Project
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

USE_PROPRIETARY_AUDIO_EXTENSIONS := false

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := generic

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

# DO NOT change the following line to vfpv3 as it is not really supported on our device!
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := ap20
TARGET_BOARD_PLATFORM_GPU := tegra
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := androidboot.carrier=wifi-only product_type=w
#KERNEL_MODULES_DIR := /system/lib/modules
TARGET_KERNEL_SOURCE := kernel/moto/wingray
TARGET_KERNEL_CONFIG := eos_defconfig

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056858112
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29859115008
BOARD_FLASH_BLOCK_SIZE := 4096
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true


TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_OMX_NEEDS_LEGACY_AUDIO := true
BOARD_NEED_OMX_COMPAT := true
BOARD_USB_AUDIO_CARD_ID := 0

# Camera
USE_CAMERA_STUB := false

# Graphics
USE_OPENGL_RENDERER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
SKIP_SET_METADATA := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_USES_HWCOMPOSER := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# BOARD_BLUEDROID_VENDOR_CONF :=
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/moto/wingray/bluetooth



TARGET_BOARD_INFO_FILE := device/moto/wingray/board-info.txt
