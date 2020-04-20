#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.aux.packagelist=org.lineageos.snap,net.sourceforge.opencamera,org.codeaurora.snapcam

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Disable smart fps switching
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.smart_dfps.enable=false

# Enable inband ringing
PRODUCT_PRODUCT_PROPERTIES += \
    persist.bluetooth.disableinbandringing=false

# Enable blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1
