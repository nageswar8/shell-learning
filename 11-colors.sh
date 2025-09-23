#!/bin/bash

USER=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USER -ne 0]; then
    echo -e "$R error:: user need root privileges"
    exit 1 
fi

VALIDATE() {

    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILED $N"
        exit 1
    else
        echo -e "$G Installing $2 ...  SUCCESS $N"
    fi

}

dnf list installed mysql


if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "MySQL already exist ... $Y SKIPPING $N"
fi