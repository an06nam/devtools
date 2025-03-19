#/bin/sh

# install required dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y which sed make binutils build-essential diffutils gcc g++ bash patch \
	patch gzip bzip2 perl tar cpio unzip rsync file bc findutils wget \
	python3 ncurses-base ncurses-bin git curl

# Download buildroot LTS
wget -c https://buildroot.org/downloads/buildroot-2024.02.11.tar.gz

# extract installation
tar xvf *.tar.*
rm *.tar.*	# remove the tar file
cd buildroot*
