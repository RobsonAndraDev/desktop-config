#!/bin/bash

sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove
sudo apt-get update && sudo apt-get install -y upgrade
sudo apt-get install -y python-pip
sudo pip install -y ansible







