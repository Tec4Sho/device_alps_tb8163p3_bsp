# Replace $$DEVICE$$ with your Device Name's Value. Mine is Primo_RX5.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value, Mine is WALTON 

ifneq ($(filter android_device_alps_tb8163p3,$(TARGET_DEVICE)),)

LOCAL_PATH := android_device_alps_tb8163p3

COMMON_LUNCH_CHOICES := \
omni_tb8163p3-eng \
omni_tb8163p3.mk

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(call all-xml-files-under,$(LOCAL_PATH))

endif
