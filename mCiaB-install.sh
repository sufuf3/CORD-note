#!/bin/sh

curl -o ~/cord-bootstrap.sh https://raw.githubusercontent.com/opencord/cord/cord-5.0/scripts/cord-bootstrap.sh
chmod +x cord-bootstrap.sh
./cord-bootstrap.sh -d
export VAGRANT_SERVER_URL="https://vagrantcloud.com"
logout
login
 ./cord-bootstrap.sh -v
logout
login
# https://goo.gl/pcSmT5 = https://raw.githubusercontent.com/opencord/mcord/cord-5.0/podconfig/mcord-ng40-virtual.yml
cd ~/cord/build/podconfig/ && wget -O mcord-ng40-virtual.yml https://goo.gl/pcSmT5
cd ~/cord/build/ && make config PODCONFIG=mcord-ng40-virtual.yml
cd ~/cord/build/ && make -j4 build; make compute-node-refresh
