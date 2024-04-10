#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Derp Flags
#DERP_BUILDTYPE=Official
DERP_VERSION_APPEND_TIME_OF_DAY=true
TARGET_USES_PICO_GAPPS=true
EXTRA_UDFPS_ICONS=true

# Remove Packages
PRODUCT_PACKAGES += \
    RemovePackages

DEVICE_PATH := device/oplus/denniz

# Inherit from ossi device
$(call inherit-product, device/oplus/mt6893-common/ossi.mk)

# Alert slider
PRODUCT_PACKAGES += \
    alert-slider_daemon

# Overlays
PRODUCT_PACKAGES += \
    SettingsProviderOverlayDenniz

# Inherit from vendor blobs
$(call inherit-product, vendor/oplus/denniz/denniz-vendor.mk)
