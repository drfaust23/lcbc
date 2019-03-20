#!/bin/bash

version=10.0 # install CUDA version, 현재 tensorflow에서 지원하는 CUDA 버전은 10.0 이다.

# This file is used in sudo

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

# check installed CUDA
sudo dpkg -r `dpkg -l | grep cuda | awk '{print $2}'`
sudo dpkg -P `dpkg -l | grep cuda | awk '{print $2}'`

sudo apt-get install linux-headers-$(uname -r)

grepCUDA=`ls cuda-repo*.deb`

sudo dpkg -i $grepCUDA

grepCUDAvar=`ls /var/ | grep cuda-repo`

sudo apt-key add /var/"$grepCUDAvar"/7fa2af80.pub
sudo apt update
sudo apt install cuda

echo "export PATH=/usr/local/cuda-"$version"/bin${PATH:+:${PATH}}" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-"$version"/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.bashrc

chkPM=`systemctl status nvidia-persistenced | grep Running`

# if [ -z "$chkPM" ] ; then
sudo systemctl enable nvidia-persistenced
# fi

cp /lib/udev/rules.d/40-vm-hotadd.rules /etc/udev/rules.d
sed -i '/SUBSYSTEM=="memory", ACTION=="add"/d' /etc/udev/rules.d/40-vm-hotadd.rules

echo "## Done ! #############################################"
echo " 1. Reboot"
echo " 2. After reboot, execute 'bash install_cudnn_nccl.sh'"
echo "#######################################################"

# sudo reboot
