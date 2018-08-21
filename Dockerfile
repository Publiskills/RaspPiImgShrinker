FROM ubuntu:latest

RUN apt-get update \
&& apt-get install -y parted udev \
&& rm -rf /var/lib/apt/lists/*

COPY raspberrypi_image_resize.sh /raspberrypi_image_resize.sh
RUN chmod +x /raspberrypi_image_resize.sh
