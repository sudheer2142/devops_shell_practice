#!/bin/bash

date=$(date +%F)
LOGFILE =/tmp/$0-$date.log

VALIDATE(){

if [$1 -ne 0 ]

then 

echo -e "$G intallion  Success $i $N"

else

 echo "$R failed $i $N"

 fi
}

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

userid=$(id -u)

if [$userid -ne 0 ]
 
 then 

 echo -e " $R run the script with root access $N"
 exit 1

 fi

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]

    then
        echo -e " $G Installing $i  please wait $N"
        VALIDATE $? "$i" 

    else

        echo -e " $Y ALready installed $i  $N"

    fi
done 



# to run the script  like sh loops.sh git ,nginx, 