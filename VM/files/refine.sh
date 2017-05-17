#!/bin/bash

sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update > /dev/null
sudo apt-get install -y openjdk-8-jre > /dev/null
echo "JAVA Installed"
sudo apt-get install -y apache2 > /dev/null
echo "APACHE Installed"
cd /vagrant/files/openrefine-2.7-rc.2/ 
nohup ./refine -i 0.0.0.0 > /dev/null
echo "OpenRefine is running"
java -jar conciliator-2.2.0.jar > /dev/null