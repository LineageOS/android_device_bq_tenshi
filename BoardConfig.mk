#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

-include device/bq/msm8937-common/BoardConfigCommon.mk

LOCAL_PATH := device/bq/tenshi

# Assert
TARGET_OTA_ASSERT_DEVICE := Aquaris_U_Plus,tenshi

# Kernel
TARGET_KERNEL_CONFIG := lineage_tenshi_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# inherit from the proprietary version
-include vendor/bq/tenshi/BoardConfigVendor.mk
