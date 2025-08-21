# Some commits added for clarity 
DEVICE_PATH := device/alps/tb8163p3

TARGET_BOARD_PLATFORM := mt8163               # From ro.mediatek.platform, but lowercase value
TARGET_NO_BOOTLOADER := false
TARGET_BOOTLOADER_BOARD_NAME := tb8163p3_bsp     # From ro.product.board
TARGET_BOARD_PLATFORM_GPU := mtk
TARGET_USES_AOSP := true
TARGET_NO_KERNEL := false

TW_INTERNAL_STORAGE_PATH := /data/media/0
TW_INTERNAL_STORAGE_MOUNT_POINT := data
TW_EXTERNAL_STORAGE_PATH := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# USB Mounting
# TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file

# Enable reboot to Fastboot/D HAL
TW_INCLUDE_FASTBOOTD := true

# to disable mouse cursor
TW_NO_MOUSE_CURSOR := false

# twrp rotation for special devices
TW_ROTATION := 0

# Provide for the full range of partition tools to be built for the target . Set it to build all the partition tools (lpmake, lpadd, lpflash, lpunpack, lpdump) and lptools
TW_ENABLE_ALL_PARTITION_TOOLS := true

# To fix temperature showing 0 degree and battery on 100% all the time
TW_USE_LEGACY_BATTERY_SERVICES := true

# Enable early preparation of /data/media for emulated storage
TW_PREPARE_DATA_MEDIA_EARLY := true

# Enable external storage support
TW_USE_EXTERNAL_STORAGE := true

# Statusbar icons flags
TW_STATUS_ICONS_ALIGN := center

# To set twrp CPU temperature position
TW_CUSTOM_CPU_POS := 50

# To set twrp CLOCK position
TW_CUSTOM_CLOCK_POS := 300

# To Set twrp BATTERY position
TW_CUSTOM_BATTERY_POS := 800

# Build Rules
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# to indicate whether the device has a large file system. This flag is typically used to optimize the build process and the device's storage management.
BOARD_HAS_LARGE_FILESYSTEM := false

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Use the current VNDK version
BOARD_VNDK_VERSION := current

# Include additional VNDK versions (optional)
# PRODUCT_EXTRA_VNDK_VERSIONS := 28 29

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# Maintainer/Version
TW_DEVICE_VERSION := alps_tb8163p3

# These two are for MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# Recovery
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true            # To add info about F2FS Filesystem Data Block
# Put The Size of your Recovery Partition below, get it from your "MT****_Android_scatter.txt"
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_USES_FULL_RECOVERY_IMAGE := false      # Uncomment this line if you want to remove size restriction
BOARD_FLASH_BLOCK_SIZE := 131072                   # Might be different for your chip
BOARD_HAS_NO_REAL_SDCARD := true              # Depricated
BOARD_HAS_NO_SELECT_BUTTON := true          # Depricated
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true           # Delete if your partition table has /misc
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RECOVERY_SDCARD_ON_DATA := true               # Optional: If /sdcard partition is emulated on /data partition 

# TWRP stuff
TW_EXCLUDE_SUPERSU := true                    # true/false: Add SuperSU or not
TW_INCLUDE_CRYPTO := true                     # true/false: Add Data Encryption Support or not
#TW_INPUT_BLACKLIST := hbtp_vm               # Optional: Disables virtual mouse
TW_SCREEN_BLANK_ON_BOOT := false
TW_THEME := landscape_hdpi                     # Set the exact theme you wanna use. If resulation doesn't match, define the height/width
DEVICE_RESOLUTION := 1280x720                 # The Resolution of your Device
TARGET_SCREEN_HEIGHT := 720                    # The height
TARGET_SCREEN_WIDTH := 1280                      # The width
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
# Set the Brightness Control File Path below (as per your chip/device)
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
# Set the Path of Logical Units (LUNs) for Storage below (as per your chip/device)
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
# TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
# TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mtp/lun/file

# Specify a custom device name for MTP
TW_MTP_DEVICE := alps_tb8163p3

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# This allows for customization of the Android system's behavior, often used to work around device-specific
# issues or to enable advanced features.
TW_OVERRIDE_SYSTEM_PROPS := \
"ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"

# that forces the use of a specific Keymaster version. Keymaster is a security subsystem in Android that manages cryptographic keys and operations.
TW_FORCE_KEYMASTER_VER := true

# moves recovery-related files to the vendor_boot partition instead of the boot or recovery partitions, optimizing partition usage and aligning with modern Android partition layouts.
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true

# This is a build flag that tells the Android build system whether the device uses a generic kernel image or a custom, device-specific kernel image.
BOARD_USES_GENERIC_KERNEL_IMAGE := true

#
BOARD_MOVE_GSI_AVB_KEYS_TO_VENDOR_BOOT := true

# Platform Version
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# All the partitions to be wiped (in order) under recovery.
# Wipe the boot partitions last so that all partitions will be wiped
# correctly even if the wiping process gets interrupted by a force boot.
TARGET_RECOVERY_WIPE := device/alps/tb8163p3/recovery.wipe


# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31

# Vendor Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Need to add back Stock kernel without builtin modules
# Remove prebuilt modules, it's now loaded by kernel modules loader from vendor
TW_LOAD_VENDOR_MODULES := "*"

# to use TWRP module loader code for vendor_boot module loading.
TW_LOAD_VENDOR_BOOT_MODULES := true

# To load vendor dlkm modules for touch or etc
TW_LOAD_VENDOR_DLKM_MODULES := "ilitek.ko sitronix-ts.ko hxchipset-i2c.ko focaltech.ko synaptics_dsx.ko jadard_touch.ko gsl37xx.ko hyn_cst3xx.ko"

# This means that the system partition will be mounted directly as the root filesystem (/) during boot, rather than having a separate root filesystem and system partition.
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true

TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80                   # Set custom brightness, low is better
TW_INCLUDE_NTFS_3G := true                    # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true                 # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := true                   # Include LogCat Binary
TW_INCLUDE_FB2PNG := true                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := en                     # Set Default Language 
TW_EXTRA_LANGUAGES := false
TWRP_EVENT_LOGGING := true
TW_INCLUDE_LPTOOLS := false
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_LIBRESETPROP := true

#Touchscreen
# TW_LOAD_VENDOR_MODULES := \
# ilitek.ko \
# sitronix-ts.ko \
# hxchipset-i2c.ko \
# focaltech.ko \
# synaptics_dsx.ko \
# jadard_touch.ko \
# gsl37xx.ko \
# hyn_cst3xx.ko

# Kernel
TARGET_IS_64_BIT := false                      # true/false: Determine if the device is 64-bit or not
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
# Get the CMDLine, Base, Pagesize and offsets from Unpacked recovery image and put below
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_HASH_TYPE := sha1
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x15000000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x14000000
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_DTBO_OFFSET := 12834816
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Set FSTAB
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
TARGET_USES_UNCOMPRESSED_KERNEL := false

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2021-09
VENDOR_SECURITY_PATCH := 2021-09
PLATFORM_VERSION := 9.0.0

# File systems and partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000 # 33554432 - 16MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000 # 33554432 - 16MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x13000000
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x80000000
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xD9A780000
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 0x12c00000

#BOARD_VENDOR_KERNEL_MODULES_ARCHIVE
#BOARD_RECOVERY_KERNEL_MODULES_LOAD
#BOARD_RECOVERY_KERNEL_MODULES
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DTBO := true
# TARGET_KERNEL_CONFIG := 
TARGET_KERNEL_SOURCE := $(DEVICE_PATH)/prebuilt/zImage

# Android build system support - tb8163p3_defconfig
#SoC vendor kernel modules shouldn't depend on ODM kernel modules.
#In Android 7.x and lower, /vendor and /odm partitions are not mounted early. In Android 8.x and higher, to make module loading from these partitions possible, provisions have been made to mount partitions early for both non-A/B and A/B devices. This also ensures that the partitions are mounted in both Android and Charger modes.

# In BoardConfig.mk, the Android build defines a BOARD_VENDOR_KERNEL_MODULES variable that provides a full list of the kernel modules intended for the vendor image. The modules listed in this variable are copied into the vendor image at /lib/modules/, and, after being mounted in Android, appear in /vendor/lib/modules (in accordance with the above requirements). Example configuration of the vendor kernel modules:
vendor_lkm_dir := $(DEVICE_PATH)/recovery/root/lib/modules
BOARD_VENDOR_KERNEL_MODULES := \
  $(vendor_lkm_dir)/ilitek.ko \
  $(vendor_lkm_dir)/wlan_drv_gen2.ko \
  $(vendor_lkm_dir)/sitronix-ts.ko \
  $(vendor_lkm_dir)/hxchipset-i2c.ko \
  $(vendor_lkm_dir)/focaltech.ko \
  $(vendor_lkm_dir)/wmt_drv.ko \
  $(vendor_lkm_dir)/synaptics_dsx.ko \
  $(vendor_lkm_dir)/jadard_touch.ko \
  $(vendor_lkm_dir)/gsl37xx.ko \
  $(vendor_lkm_dir)/tda7708LX.ko \
  $(vendor_lkm_dir)/betterlife_ts.ko \
  $(vendor_lkm_dir)/qn8035.ko \
  $(vendor_lkm_dir)/si475x.ko \
  $(vendor_lkm_dir)/atmel_mxt_ts.ko \
  $(vendor_lkm_dir)/ak7604.ko \
  $(vendor_lkm_dir)/fy7604.ko \
  $(vendor_lkm_dir)/hyn_cst3xx.ko \
  $(vendor_lkm_dir)/fmradio_drv.ko \
  $(vendor_lkm_dir)/tp9951.ko \
  $(vendor_lkm_dir)/tp9950.ko \
  $(vendor_lkm_dir)/carstatus.ko \
  $(vendor_lkm_dir)/tp2825.ko \
  $(vendor_lkm_dir)/cd3313.ko \
  $(vendor_lkm_dir)/f_iap_zj.ko \
  $(vendor_lkm_dir)/f_iap_lt.ko \
  $(vendor_lkm_dir)/qn8027.ko \
  $(vendor_lkm_dir)/met.ko \
  $(vendor_lkm_dir)/bt_drv.ko \
  $(vendor_lkm_dir)/gps_drv.ko \
  $(vendor_lkm_dir)/wmt_chrdev_wifi.ko
  
# In this example, a vendor kernel module pre-built repository is mapped into the Android build at the location listed above.
vendor_lkm_dir := $(DEVICE_PATH)/recovery/root/lib/modules
BOARD_RECOVERY_KERNEL_MODULES := \
  $(vendor_lkm_dir)/ilitek.ko \
  $(vendor_lkm_dir)/sitronix-ts.ko \
  $(vendor_lkm_dir)/hxchipset-i2c.ko \
  $(vendor_lkm_dir)/focaltech.ko \
  $(vendor_lkm_dir)/synaptics_dsx.ko \
  $(vendor_lkm_dir)/jadard_touch.ko \
  $(vendor_lkm_dir)/gsl37xx.ko \
  $(vendor_lkm_dir)/hyn_cst3xx.ko

# Set FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture

# According to the device's architecture (64-bit or 32-bit)
ifeq ($(TARGET_IS_64_BIT),true)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
else
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a9
# Architecture Extensions
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_SUFFIX := _32
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := false
TARGET_IS_32_BIT := true
TARGET_PREFER_32_BIT := true
TARGET_PREFER_32_BIT_APPS := true
endif

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary module files if needed
# include $(DEVICE_PATH)/kernel_modules.mk

       
