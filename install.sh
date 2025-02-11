#!/bin/bash

echo "Running belwow Script"

sudo apt-get update

echo "Installing Docker"
sudo apt-get install docker.io -y

sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y

wget -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update
sudo apt install -y jenkins

