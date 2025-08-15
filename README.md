# MT8163-tb8163p3_bsp-alps-AJ002-OB
TWRP build for the mt8163 ALPS 9.2" android radio, arm only version on android 9.

This TWRP build is for the mt8163 soc chipset running on
 android tablets with kernel version 4.9.117 / arm64 support 
 by this recovery is set for arm only android 9 operating system.

All original sourced files from ALPS unit model tb8163p3_bsp
 backup using SP Flash and Android Kitchen Tools.

This recovery will build TWRP from source code.

Files found in sbin *
Custom added mtk-su  - for build-in root support.

Custom added toybox  - for build-in I2C-TOOLS and additional 
 su support.Toybox supports i2cget i2cset i2cdump i2cdetect 

Custom added modules - for touchscreen modules check for load
 and logcat / Dmesg recovery logging support for debug purposes. 

