#!/bin/sh

sudo apt-get update
sudo apt-get install -y curl
sudo apt-get -y upgrade
sudo apt-get install -y ubuntu-desktop
sudo apt-get -y upgrade
#instalar java
sudo mkdir /opt/jdk
sudo mv -  /opt/jdk
sudo rpm -i /u01/$JAVA_RPM
