# GMS
WITH_GMS_COMMS_SUITE := true

# Sensitive Phone Numbers list
PRODUCT_PACKAGES += \
    sensitive_pn.xml

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Default ringtone
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Your_new_adventure.ogg

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Disable mobile data by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.android.mobiledata=false

# Inherit BCR
BUILD_BCR ?= true
ifeq ($(BUILD_BCR),true)
$(call inherit-product, vendor/extras/bcr/bcr.mk)
endif
