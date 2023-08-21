#!/bin/bash

DATE=$(date + %F)

scrpit_Name=$#

LOG_FILE=/tmp/$scrpit_Name-$DATE.log

VALIDATE(){
    if[ $1 -ne 0]
     then 
       echo  " INSTALL FAILURE...."
       exit 1
    else 
     echo " INSTALL SUCCESS.."

     fi
}

User_id=$( id -u)

if [ User_id -ne 0]{
    then 
     echo " ERROR: please run the script with root access"
     exit 1

fi
}

yum install mysql -y &>>LOG_FILE

VALIDATE $? "Installing MySql
