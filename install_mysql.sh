#!/bin/bash

OS=`cat /etc/os-release | grep -w "NAME" | awk -F "=" '{print $2}' | tr -d \"`

if [[ $OS == "Ubuntu" ]]
then
    sudo apt install mysql-server
elif [[ $OS == "CentOS Linux" ]]
then
    wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
    sudo rpm -ivh mysql80-community-release-el7-3.noarch.rpm
    sudo yum install mysql-server
fi