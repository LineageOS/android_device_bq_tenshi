#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tenshi device
$(call inherit-product, device/bq/tenshi/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_DEVICE := tenshi
PRODUCT_NAME := lineage_tenshi
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris U Plus
PRODUCT_MANUFACTURER := bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Aquaris_U_Plus PRODUCT_NAME=Aquaris_U_Plus

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-bq

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="bq/tenshi/tenshi:7.1.1/NMF26F/1492687806:user/release-keys" \
    PRIVATE_BUILD_DESC="tenshi-user 7.1.1 NMF26F 2.1.0_20170420-1318 release-keys"
