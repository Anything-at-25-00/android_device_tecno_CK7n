#!/bin/bash

echo "- Applying Aperture Mediatek HFPS Mode Patch"
cd packages/apps/Aperture
curl https://github.com/Nothing-2A/android_packages_apps_Aperture/commit/9509277efc852ad8bdcce204e0d9cfe104b6d190.patch | git am
cd ../../../
echo "- Applying fwb FOD patch"
cd frameworks/base
curl https://raw.githubusercontent.com/Anything-at-25-00/patches/refs/heads/sixteen/frameworks/base/0001-SystemUI-biometrics-Add-HBM-Trigger-for-Transsion-UD.patch | git am
cd ../..
