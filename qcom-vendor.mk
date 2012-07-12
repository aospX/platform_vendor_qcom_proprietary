# Copyright (C) 2012 The Android Open Source Project
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

# CodeAurora shared libraries
PRODUCT_PACKAGES += \
    libqc-opt \
    libmm-color-convertor \
    libmmosal \
    libmmparser \
    libmmparser_divxdrmlib \
    libDivxDrm

ifeq ($(DYNAMIC_SHARED_LIBV8SO),true)
PRODUCT_PACKAGES += \
    libv8
endif

# Vendor extension library
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so


# All the blobs necessary for adreno
PRODUCT_COPY_FILES += \
    vendor/qcom/proprietary/system/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    vendor/qcom/proprietary/system/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    vendor/qcom/proprietary/system/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    vendor/qcom/proprietary/system/etc/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    vendor/qcom/proprietary/system/etc/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    vendor/qcom/proprietary/system/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    vendor/qcom/proprietary/system/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    vendor/qcom/proprietary/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    vendor/qcom/proprietary/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    vendor/qcom/proprietary/system/lib/egl/egl.cfg:/system/lib/egl/egl.cfg \
    vendor/qcom/proprietary/system/lib/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    vendor/qcom/proprietary/system/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    vendor/qcom/proprietary/system/lib/egl/libGLES_android.so:/system/lib/egl/libGLES_android.so \
    vendor/qcom/proprietary/system/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/qcom/proprietary/system/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    vendor/qcom/proprietary/system/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    vendor/qcom/proprietary/system/lib/libC2D2.so:/system/lib/libC2D2.so \
    vendor/qcom/proprietary/system/lib/libgsl.so:/system/lib/libgsl.so \
    vendor/qcom/proprietary/system/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    vendor/qcom/proprietary/system/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so
