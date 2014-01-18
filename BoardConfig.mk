# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

-include device/htc/msm8960/BoardConfigCommon.mk

-include vendor/htc/k2_ul/BoardConfigVendor.mk

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/htc/k2_ul/configs/egl.cfg

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/htc/k2_ul/include

# Kernel
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 user_debug=31
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01608000

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Wifi
#BOARD_HAS_QCOM_WLAN := true
#BOARD_WLAN_DEVICE := qcwcn
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_AP := "ap"
#WIFI_DRIVER_FW_PATH_STA := "sta"
#WIFI_DRIVER_MODULE_NAME := prima_wlan
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/prima_wlan.ko"
#WPA_SUPPLICANT_VERSION := VER_0_8_X

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k2_ul

# Kernel
TARGET_KERNEL_CONFIG := k2_ul_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/k2_ul/bluetooth

# Use libril in the device tree
#BOARD_PROVIDES_LIBRIL := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1426062336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1241513472
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_MAX_PARTITIONS := 28

# TWRP
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true

