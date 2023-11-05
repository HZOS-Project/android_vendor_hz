# Inherit common mobile hz stuff
$(call inherit-product, vendor/hz/config/common.mk)

# Include AOSP audio files
include vendor/hz/config/aosp_audio.mk

# Include hz audio files
include vendor/hz/config/hz_audio.mk

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub
