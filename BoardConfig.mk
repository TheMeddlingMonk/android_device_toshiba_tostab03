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

# Platform
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_BOOTLOADER_BOARD_NAME := antares
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_GET_CPU_SMP := true
TARGET_OTA_ASSERT_DEVICE := antares,tostab03
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb tegra_fbmem=0x3e8a00@0x1fbfa000 console=ttyS0,115200n8 debug_uartport=hsport usbcore.old_scheme_first=1 lp0_vec=8192@0x1fbee000 tegraboot=sdmmc board_info=4249:ff41:ff:ff:54 gpt androidboot.carrier=wifi-only
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/toshiba/tostab03
TARGET_KERNEL_CONFIG := omni_tostab03_defconfig

# Prebuilt Kernel Fallback
# Falls back to these kernels if kernel compilation fails
TARGET_PREBUILT_KERNEL := device/toshiba/tostab03/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/toshiba/tostab03/kernel

# Recovery
TARGET_RECOVERY_FSTAB := device/toshiba/tostab03/recovery.fstab

# Display
USE_OPENGL_RENDERER := true

# Audio
BOARD_USES_GENERIC_AUDIO := true

# GPS
BOARD_HAVE_GPS := true

# Camera
# TBA

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# USB
# TBA

# Wifi

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 734003200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# Recovery Options
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_LARGE_FILESYSTEM := true

# TWRP
DEVICE_RESOLUTION := 1280x800
RECOVERY_SDCARD_ON_DATA := true
#BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_REBOOT_BOOTLOADER := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
