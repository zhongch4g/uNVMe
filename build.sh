# 1. change the GCC version to v5.4.0
# sudo update-alternatives --config gcc
update-alternatives --set gcc "/usr/bin/gcc-5"

# 2. build
sudo bash ./make.sh intel_clean
sudo bash ./make.sh intel

# 3. make driver
# modify unvme.mk file CONFIG_KVNVME_LOG_LEVEL to print Debug info
cd driver
sudo make -j

mv ./core/libkvnvmedd.a /home/chenzhong/projects/KVSSD/PDK/core/lib

# sudo update-alternatives --config gcc
update-alternatives --set gcc "/usr/bin/gcc-11"