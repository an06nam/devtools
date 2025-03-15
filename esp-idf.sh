#!/bin/sh

# update repository
sudo apt update && sudo apt upgrade -y

# install linux dependencies
sudo apt-get install -y \
	git wget unzip flex bison gperf python3 python3-pip python3-venv \
	cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

# Get ESP-IDF
mkdir esp/
cd esp
wget -c https://github.com/espressif/esp-idf/releases/download/v5.4/esp-idf-v5.4.zip
unzip esp-idf-v5.4.zip

# Set up the Tools
cd esp-idf-v5.4
./install.sh all # change all to your target chip

# setup alias for esp-idf tools
echo "# ESP-IDF aliases" >> ../../dev.sh
echo "alias idf-tools='. $(pwd)/export.sh'" >> ../../dev.sh
source $HOME/.bashrc

# Delete ESP-IDF installer
rm ../../esp-idf-v5.4.zip
