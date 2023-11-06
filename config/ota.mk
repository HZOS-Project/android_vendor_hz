ifneq ($(filter OFFICIAL CI,$(HZ_BUILD_TYPE)),)
PRODUCT_PACKAGES += \
    Updates
endif
