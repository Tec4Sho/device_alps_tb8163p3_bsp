#!/sbin/sh

setenforce 0 

## Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/apd
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/boot
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/cache
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/dkb
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/dtbo
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/expdb
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/flashinfo
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/frp
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/kb
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/lk
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/lk2
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/logo
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/metadata
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/nvram
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/nvrom
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/para
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/persist
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/proinfo
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/protect1
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/protect2
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/recovery
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/seccfg
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/secro
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/system
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/tee1
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/tee2
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/userdata
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/vbmeta
mkdir -p /dev/block/platform/mtk-msdc.0/by-name/vendor


busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/apd /dev/block/platform/mtk-msdc.0/by-name/apd          
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot /dev/block/platform/mtk-msdc.0/by-name/boot
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/cache /dev/block/platform/mtk-msdc.0/by-name/cache 
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/dkb /dev/block/platform/mtk-msdc.0/by-name/dkb
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/dtbo /dev/block/platform/mtk-msdc.0/by-name/dtbo
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/expdb /dev/block/platform/mtk-msdc.0/by-name/expdb
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/flashinfo /dev/block/platform/mtk-msdc.0/by-name/flashinfo
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/frp /dev/block/platform/mtk-msdc.0/by-name/frp
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/kb /dev/block/platform/mtk-msdc.0/by-name/kb
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/lk /dev/block/platform/mtk-msdc.0/by-name/lk
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/lk2 /dev/block/platform/mtk-msdc.0/by-name/lk2
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/logo /dev/block/platform/mtk-msdc.0/by-name/logo
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/metadata /dev/block/platform/mtk-msdc.0/by-name/metadata
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/nvram /dev/block/platform/mtk-msdc.0/by-name/nvram
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/nvrom /dev/block/platform/mtk-msdc.0/by-name/nvrom
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/para /dev/block/platform/mtk-msdc.0/by-name/para
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/persist /dev/block/platform/mtk-msdc.0/by-name/persist
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/proinfo /dev/block/platform/mtk-msdc.0/by-name/proinfo
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/protect1 /dev/block/platform/mtk-msdc.0/by-name/protect1
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/pertect2 /dev/block/platform/mtk-msdc.0/by-name/protect2
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery /dev/block/platform/mtk-msdc.0/by-name/recovery
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/seccfg /dev/block/platform/mtk-msdc.0/by-name/seccfg
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/secro /dev/block/platform/mtk-msdc.0/by-name/secro
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/system /dev/block/platform/mtk-msdc.0/by-name/system
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/tee1 /dev/block/platform/mtk-msdc.0/by-name/tee1
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/tee2 /dev/block/platform/mtk-msdc.0/by-name/tee2
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/userdata /dev/block/platform/mtk-msdc.0/by-name/userdata
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/vbmeta /dev/block/platform/mtk-msdc.0/by-name/vbmeta
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/vendor /dev/block/platform/mtk-msdc.0/by-name/vendor

