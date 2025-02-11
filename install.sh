#!/bin/bash

echo "Running belwow Script"

sudo apt-get update

echo "Installing Docker"
sudo apt-get install docker.io -y

sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
   