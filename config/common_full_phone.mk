# Inherit full common hz stuff
$(call inherit-product, vendor/hz/config/common_full.mk)

# Telephony

IS_PHONE := true

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include hz LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/hz/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/hz/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/hz/config/telephony.mk)
