#!/bin/bash

echo "this sript is with function and if conditon and login the output"

Date=$(date +%F)
scriptName="$0"
LOGFILE=/tmp/$scriptName-$Date.log

echo "enabling colors."

R="\e[31m"
G="\e[32m"
N="\e[0m"



VALIDATE(){
    if [$1 -ne 0]
    then 
        echo -e " $2  is $R failure $N"
        exit 1
    else
        echo "$2 is $R success $N "
    fi 
    }


USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
    echo -e  " $R Run the script with root access $N"
    exit 1
 else
 
    echo -e " $R INFO:: You are root user $N"

fi

yum install nginx -y &>>$LOGFILE

VALIDATE $? "Installing nginx"


yum install git -y &>>$LOGFILE

VALIDATE $? " Installing git "