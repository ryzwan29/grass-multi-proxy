#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common git -y

# install python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.12 python3.12-venv python3.10-venv

# install pip
sudo curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12 

# clone github
git clone https://github.com/ryzwan29/grass-multi-proxy.git
cd grass-multi-proxy

# create environment python
python3 -m venv grass-env
source grass-env/bin/activate

# install requirements
pip3 install -r requirements.txt
