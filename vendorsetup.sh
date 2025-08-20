# Device: alps tb6163p3_bsp
add_lunch_combo omni_tb8163p3-eng
add_lunch_combo omni_tb8163p3-user
add_lunch_combo omni_tb8163p3-userdebug
export EXPERIMENTAL_USE_JAVA8=true
export ALLOW_MISSING_DEPENDENCIES=true
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
export LC_ALL=C make
# TWRP Flags
export TARGET_ARCH=arm
# export OF_FLASHLIGHT_ENABLE=1
# export OF_FL_PATH1="/sys/devices/virtual/camera/flash/rear_flash"
export TWRP_VERSION=3
export OF_MAINTAINER="Tec4Sho_Ziona"
export TARGET_DEVICE_ALT="tb8163p3"
export OF_ENABLE_LPTOOLS=1
export OF_USE_LEGACY_BATTERY_SERVICES=1
export TARGET_BOARD_PLATFORM=mt8163               # From ro.mediatek.platform, but lowercase value
export TARGET_NO_BOOTLOADER=false
export TARGET_BOOTLOADER_BOARD_NAME="tb8163p3_bsp"     # From ro.product.board
export TARGET_BOARD_PLATFORM_GPU=mtk
export TARGET_USES_AOSP=true
export TARGET_NO_KERNEL=false

# export OF_SCREEN_H=1800
