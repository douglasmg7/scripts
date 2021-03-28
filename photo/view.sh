#!/usr/bin/env bash

if [[ -z `mount | grep /home/douglasmg7/mnt` ]]
then
    echo mounting card...
    sudo mount /dev/sdb1 ~/mnt
fi

sudo feh -. ~/mnt/DCIM/100CANON/*.JPG
sudo /home/douglasmg7/code/scripts/photo/remove_cr3_without_jpg.py