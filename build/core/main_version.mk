# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# HZOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.hz.display.version=$(HZ_DISPLAY_VERSION) \
    ro.hz.build.version=$(HZ_BUILD_VERSION) \
    ro.hz.build.date=$(BUILD_DATE) \
    ro.hz.buildtype=$(HZ_BUILD_TYPE) \
    ro.hz.fingerprint=$(ROM_FINGERPRINT) \
    ro.hz.version=$(HZ_VERSION) \
    ro.modversion=$(HZ_VERSION)

# HZOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.hz.display.version=$(HZ_DISPLAY_VERSION)

# HZOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.hz.build.version.plat.sdk=$(HZ_PLATFORM_SDK_VERSION)

# HZOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.hz.build.version.plat.rev=$(HZ_PLATFORM_REV)
