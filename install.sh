#!/bin/bash
sudo apt update
sudo apt install python -y
sudo apt install python-pip -y
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y