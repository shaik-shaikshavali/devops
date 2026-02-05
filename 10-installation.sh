#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "You have root user access"
    
    else
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installing Nginx"
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Installing Nginx ...SUCCESS "
    
else
    echo "Installing Nginx ... FAILURE"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing MySQL ... FAILURE"
    exit 1
else
    echo "Installing MySQL ... SUCCESS"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs ... FAILURE"
    exit 1
else
    echo "Installing nodejs ... SUCCESS"
fi