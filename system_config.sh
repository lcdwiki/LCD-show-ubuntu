#!/bin/bash

version=`lsb_release -r | awk -F ' '  '{printf $NF}'`

if [ $(getconf WORD_BIT) = '32' ] && [ $(getconf LONG_BIT) = '64' ] ; then
hardware_arch=64
else
hardware_arch=32
fi

if [[ "$version" < "20.04" ]]; then
if [ $hardware_arch -eq 32 ]; then
sudo cp -rf ./boot/config-nomal.txt ./boot/config.txt.bak
elif [ $hardware_arch -eq 64 ]; then
sudo cp -rf ./boot/config-nomal-64.txt ./boot/config.txt.bak
fi
elif [[ "$version" = "20.04" ]]; then
if [ $hardware_arch -eq 32 ]; then
sudo cp -rf ./boot/config-nomal-20.04.txt ./boot/config.txt.bak
elif [ $hardware_arch -eq 64 ]; then
sudo cp -rf ./boot/config-nomal-20.04-64.txt ./boot/config.txt.bak
fi
elif [[ "$version" = "20.10" ]]; then
if [ $hardware_arch -eq 32 ]; then
sudo cp -rf ./boot/config-nomal-20.10-32.txt ./boot/config.txt.bak
elif [ $hardware_arch -eq 64 ]; then
sudo cp -rf ./boot/config-nomal-20.10-64.txt ./boot/config.txt.bak
fi
elif [[ "$version" > "20.10" ]] && [[ "$version" < "22.04" ]]; then
if [ $hardware_arch -eq 32 ]; then
sudo cp -rf ./boot/config-nomal-20.10-32.txt ./boot/config.txt.bak
elif [ $hardware_arch -eq 64 ]; then
sudo cp -rf ./boot/config-nomal-20.10-64.txt ./boot/config.txt.bak
fi
elif [[ "$version" = "22.04" ]] || [[ "$version" > "22.04" ]]; then
if [ $hardware_arch -eq 32 ]; then
sudo cp -rf ./boot/config-nomal-22.04-32.txt ./boot/config.txt.bak
elif [ $hardware_arch -eq 64 ]; then
sudo cp -rf ./boot/config-nomal-22.04-64.txt ./boot/config.txt.bak
fi
fi
