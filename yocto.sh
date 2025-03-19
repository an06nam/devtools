#/bin/sh


# Install Dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential chrpath cpio debianutils \
	diffstat file gawk gcc git iputils-ping libacl1 liblz4-tool \
	locales python3 python3-git python3-jinja2 python3-pexpect \
	python3-pip python3-subunit socat texinfo unzip wget xz-utils zstd

# Clone Poky
mkdir yocto-dev
cd yocto-dev
git clone git://git.yoctoproject.org/poky
cd poky && git checkout origin/scarthgap && git pull
cd ..
git clone https://github.com/riscv/meta-risc
cd meta-risc && git checkout origin/scarthgap && git pull
cd ..
git clone https://github.com/linux-sunxi/meta-sunxi
cd meta-sunxi && git checkout origin/scarthgap && git pull
cd ..
git clone git://git.openembedded.org/openembedded-core
cd openembedded-core && git checkout origin/scarthgap && git pull
cd ..
git clone git://git.yoctoproject.org/meta-arm
cd meta-arm && git checkout origin/scarthgap && git pull
cd ..
git clone git://git.yoctoproject.org/meta-openembedded
cd meta-openembedded && git checkout origin/scarthgap && git pull
cd ..
