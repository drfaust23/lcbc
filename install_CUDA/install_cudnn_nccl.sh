#!/bin/bash

grepCUDNN=`ls libcudnn7*.deb`
grepNCCL=`ls nccl-repo-*.deb`

echo "$grepCUDNN"

dpkg -i $grepCUDNN $grepNCCL

apt update

apt install libnccl2 libnccl-dev

echo "Done"

source ~/.bashrc
