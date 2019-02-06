#!/bin/bash

sudo apt -y update
sudo apt install -y software-properties-common
sudo apt install -y git

sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo add-apt-repository --yes universe
sudo apt-get install --yes ansible



