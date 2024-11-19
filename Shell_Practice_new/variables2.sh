#!/bin/bash


echo "perfomring arthematic operation from the user provided data"

echo " TODAY DATE IS" $(date)

data1=$1
data2=$2


echo "ADDITION"

SUM=$((data1+data2))

echo "sum is $SUM"


echo "SUBTACTION"

sub=$((data1-data2))

echo "Subtaction is $sub"


echo "Division"

div=$((data1/data2))

echo "division of numbers is $div"


echo "modulo"

mod=$((data1%data2))

echo "modulo is $mod"


echo "Exponentiation"

echo " Exponentiation is the operation of raising one quantity to the power of another "

expo=$((data1**data2))

echo "Exponentiation is $expo "


echo "--------------------------------------------"

echo "Performing system operation "
