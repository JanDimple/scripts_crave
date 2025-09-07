#!/bin/bash
rm -rf .repo/local_manifests/
repo init -u https://github.com/ProjectMatrixx/android.git -b 15.0 --git-lfs
git clone https://github.com/armmv7a/local_manifests.git -b matr .repo/local_manifests
/opt/crave/resync.sh
export BUILD_USERNAME=armv7a
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=armv7a
export KBUILD_HOSTNAME=crave
export TZ=Asia/Kuching
. build/envsetup.sh
brunch earth
