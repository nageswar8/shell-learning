#!/bin/bash

$USER=$(id -u)

if [ $USER -ne 0 ] then
    echo "Error :: Please run with root access"
fi


dnf install mysql -y


if [ $? -ne 0 ] then
    echo "Error installing mysql"
else
    echo "Installed success"
fi