#!/bin/bash

# this is to display on the arrays 

PERSON=("A" "B" "c" "D")


echo " Array list:" $PERSON[1]

echo " Array list:" $PERSON[@]

echo " enter the list of data seperated with space to add it into the array"

read "ARRAYLIST"

echo " printinf the values basd on the index $ARRAYLIST[1] $ARRAYLIST[3]"

echo "printing all the data $ARRAYLIST[@]"