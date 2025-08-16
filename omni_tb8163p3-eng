$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/alps/tb8163p3/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := tb8163p3
PRODUCT_NAME := omni_tb8163p3
PRODUCT_BRAND := alps
PRODUCT_MODEL := tb8163p3
PRODUCT_MANUFACTURER := alps

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="DIGILAND/DL1023/DL1023:9/PPR1.180610.011/linhr05230047:user/release-keys" \
    PRIVATE_BUILD_DESC="full_tb8163p3_bsp-user 9 PPR1.180610.011 eng.linhr.20250523.004808 release-keys"
