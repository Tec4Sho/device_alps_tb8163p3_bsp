ifneq (true,$(strip $(TARGET_NO_KERNEL)))

MTK_KERNEL_MODULES := \
ilitek.ko \
wlan_drv_gen2.ko \
sitronix-ts.ko \
hxchipset-i2c.ko \
focaltech.ko \
wmt_drv.ko \
synaptics_dsx.ko \
jadard_touch.ko \
gsl37xx.ko \
tda7708LX.ko \
betterlife_ts.ko \
qn8035.ko \
si475x.ko \
atmel_mxt_ts.ko \
ak7604.ko \
fy7604.ko \
hyn_cst3xx.ko \
fmradio_drv.ko \
tp9951.ko \
tp9950.ko \
carstatus.ko \
tp2825.ko \
cd3313.ko \
f_iap_zj.ko \
f_iap_lt.ko \
qn8027.ko \
met.ko \
bt_drv.ko \
gps_drv.ko \
wmt_chrdev_wifi.ko

-include $(LOCAL_FILE)/kernel_modules.mk

$(MTK_KERNEL_MODULES): kernel ;

endif # TARGET_NO_KERNEL
