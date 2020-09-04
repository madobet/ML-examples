#!/bin/sh
BSP_LOCATE=${BSP_LOCATE:-$HOME/opt/fsl-imx-xwayland/5.4-zeus}
# SDKTARGETSYSROOT=${BSP_LOCATE}/sysroots/aarch64-poky-linux
# OECORE_NATIVE_SYSROOT=${BSP_LOCATE}/sysroots/x86_64-pokysdk-linux

[ ! -f ${BSP_LOCATE}/environment-setup-aarch64-poky-linux ] &&
    color_print -e "cross compile enviroment ${BSP_LOCATE} not found?" &&
    exit 1
. ${BSP_LOCATE}/environment-setup-aarch64-poky-linux

# CXX="$OECORE_NATIVE_SYSROOT/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++  -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=$SDKTARGETSYSROOT" \
# CC="$OECORE_NATIVE_SYSROOT/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc  -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=$SDKTARGETSYSROOT" \
ARMNN_ROOT=$HOME/Repo/armnn-dev/armnn \
ARMNN_BUILD=$HOME/Repo/armnn-dev/armnn/build_arm64_local \
BOOST_ROOT=$HOME/Repo/armnn-sdk/arm64 \
make -j
