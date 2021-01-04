#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ADB
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.usb.config=mtp,adb \
    ro.secure=0 \
    ro.adb.secure=0

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bluetooth.a2dp_offload.supported=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.bluetooth.bluetooth_audio_hal.disabled=true \
    vendor.audio.feature.a2dp_offload.enable=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false \
    persist.vendor.bt.a2dp.aac_whitelist=false

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    persist.camera.gyro.disable=0 \
    persist.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
    persist.camera.eis.enable=1

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
     dalvik.vm.dex2oat64.enabled=true

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# Gboard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.kb_pad_port_b=1

# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8

# Enable app/sf phase offset as durations. The numbers below are translated from the existing
# positive offsets by finding the duration app/sf will have with the offsets.
# For SF the previous value was 6ms which under 16.6ms vsync time (60Hz) will leave SF with ~10.5ms
# for each frame. For App the previous value was 2ms which under 16.6ms vsync time will leave the
# App with ~20.5ms (16.6ms * 2 - 10.5ms - 2ms). The other values were calculated similarly.
# Full comparison between the old vs. the new values are captured in
# https://docs.google.com/spreadsheets/d/1a_5cVNY3LUAkeg-yL56rYQNwved6Hy-dvEcKSxp6f8k/edit
PRODUCT_PROPERTY_OVERRIDES += debug.sf.use_phase_offsets_as_durations=1
PRODUCT_PROPERTY_OVERRIDES += debug.sf.late.sf.duration=10500000
PRODUCT_PROPERTY_OVERRIDES += debug.sf.late.app.duration=20500000
PRODUCT_PROPERTY_OVERRIDES += debug.sf.early.sf.duration=21000000
PRODUCT_PROPERTY_OVERRIDES += debug.sf.early.app.duration=16500000
PRODUCT_PROPERTY_OVERRIDES += debug.sf.earlyGl.sf.duration=13500000
PRODUCT_PROPERTY_OVERRIDES += debug.sf.earlyGl.app.duration=21000000

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.hwui.renderer=skiavk
