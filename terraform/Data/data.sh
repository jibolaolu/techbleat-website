#! /bin/bash

sudo -i
sudo yum update -y

#Install java
sudo yum -y install java-1.8.0-openjdk-devel.x86_64

#Install Nginx
sudo amazon-linux-extras install nginx1 -y
sudo systemctl start nginx

#Install Git
sudo yum install git -y


#Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
#sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins --nogpgcheck -y
sudo service jenkins start

sudo echo  \n jenkins ALL=(ALL) NOPASSWD:ALL >>  /etc/sudoers.d/90-cloud-init-users
