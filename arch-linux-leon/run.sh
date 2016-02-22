#! /usr/bin/env bash


docker run -ti \
    --device /dev/nvidia0:/dev/nvidia0 \
    --device /dev/nvidiactl:/dev/nvidiactl \
    --device /dev/nvidia-uvm:/dev/nvidia-uvm \
    -v /home:/home -v /mnt:/mnt \
    --publish 9997:9997 \
    --name leon_arch leon/gan /bin/zsh
