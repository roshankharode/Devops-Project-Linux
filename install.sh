#!/bin/bash

# Updating server
sudo apt-get update

#Installing docker 
sudo apt-get install docker.io

# Installing Java version
sudo apt install fontconfig openjdk-17-jre -y
java -version

# Installing Jenkins on the server
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
