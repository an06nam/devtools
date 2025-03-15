#!/bin/sh

# update the repository
sudo apt update && sudo apt upgrade -y

# Install Dependencies
sudo apt install --no-install-recommends -y \
	git cmake ninja-build gperf \
	ccache dfu-util device-tree-compiler wget \
	python3-dev python3-pip python3-setuptools python3-tk python3-wheel xz-utils file \
	make gcc gcc-multilib g++-multilib libsdl2-dev libmagic1

# Get Zephyr Projects
wget -c https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.17.0/zephyr-sdk-0.17.0_linux-x86_64.tar.xz
wget -o - https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.17.0/sha256.sum | shasum --check --ignore-missing

# Extracting Zephyr SDK bundle
tar xvf zephyr-sdk-0.17.0_linux-x86_64.tar.xz
cd zephyr-sdk-0.17.0
./setup.sh


# remove installer file
cd ../
rm *.sum *.tar.*
