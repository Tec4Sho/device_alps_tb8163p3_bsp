# Replace $$DEVICE$$ with your Device Name's Value. Mine is Primo_RX5.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value, Mine is WALTON 

ifneq ($(filter tb8163p3,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)
COMMON_LUNCH_CHOICES := omni_tb8163p3-eng

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
