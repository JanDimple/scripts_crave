#!/bin/bash
rm -rf .repo/local_manifests/
repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle
git clone https://github.com/JanDimple/local_manifests.git -b earth .repo/local_manifests
/opt/crave/resync.sh
export BUILD_USERNAME=JanDimple
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=JanDimple
export KBUILD_HOSTNAME=crave
export TZ=Europe/Warsaw
. build/envsetup.sh
brunch earth
