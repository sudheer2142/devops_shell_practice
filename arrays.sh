#!/bin/bash

# this is to display on the arrays 

PERSON=("A" "B" "c" "D")


echo " Array list: ${PERSON[1]}"

echo " Array list: ${PERSON[@]}"

echo " enter the list of data seperated with space to add it into the array"

read "ARRAYLIST"

# for i in ${ARRAYLIST[@]};do
#   echo $i
# done
# in thsi below line all the inputs is taken and kept in one single array positon that is 0 position ,only by for loop we can get the data need to check onthis behaviour
echo " data in index  is : ${ARRAYLIST[0]}"

for i in ${ARRAYLIST[@]};do 

echo "printing position of index $i "

done 

echo "printing all the data ${ARRAYLIST[@]}"