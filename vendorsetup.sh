echo "Cloning Repos..."
echo "Cloning Common Device Tree..."
git clone https://github.com/araujo791/device_oneplus_sm8350-common-SuperioEx -b udc device/oneplus/sm8350-common
echo "Cloning Hardware Tree..."
git clone https://github.com/araujo791/hardware_oplus-SuperiorEx -b udc hardware/oplus
echo "Cloning rashoumon Kernel Source..."
git clone https://github.com/IamCexary/kernel_oneplus_sm8350 -b fourteen-qpr1 kernel/oneplus/sm8350
echo "Cloning Common Vendor Tree..."
git clone https://github.com/araujo791/vendor_oneplus_sm8350-common-SuperiorEx -b udc vendor/oneplus/sm8350-common
echo "Cloning Vendor Tree..."
git clone https://github.com/araujo791/vendor_realme_porsche-SuperiorEx -b udc vendor/realme/porsche
echo "Cloning OPlusExtras..."
git clone https://github.com/araujo791/packages_apps_OPlusExtras-SuperiorEx packages/apps/OPlusExtras
echo "Cloning Firmware..."
git clone https://gitlab.com/araujo791/proprietary_vendor_realme_firmware -b uvite-porsche vendor/realme/firmware
echo "Cloning Oneplus Camera..."
git clone https://gitlab.com/araujo791/proprietary-vendor-oplus-camera-superior-ex -b topaz-porsche vendor/oplus/camera
echo "kernel-build-tools Fix error openssl/bio.h..."
git clone https://github.com/PixelExperience-Staging/prebuilts_kernel-build-tools -b fourteen prebuilts/kernel-build-tools

# We wish to ship KernelSU with rashoumon Kernel so lets set it up
echo "Setting Up KernelSU..."
cd kernel/oneplus/sm8350 && curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash - && cd && cd SuperiorUDC
