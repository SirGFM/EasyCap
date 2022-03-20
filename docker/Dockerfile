FROM ubuntu:18.04

RUN apt update && \
	apt install -y libusb-1.0-0-dev \
		libgcrypt11-dev \
		make \
		gcc && \
	mkdir -p /lib/firmware && \
	ln -s /socap/somagic_firmware.bin /lib/firmware/somagic_firmware.bin
