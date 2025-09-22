#!/bin/bash

USER=$(id -u)

VALIDATE() {

    if [ $1 -ne 0 ]; then
        echo "Error :: Please run with root access"
        exit 1
    fi


    dnf install $2 -y


    if [ $? -ne 0 ]; then
        echo "Error installing $2"
        exit 1
    else
        echo "Installed success"
    fi
}

VALIDATE $USER "mysql"

VALIDATE $USER "python3"

VALIDATE $USER "nginx"

