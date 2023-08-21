#!/bin/bash

# this is to take input from user and display & also restricting the echo of input with -s


echo " Hi please enter username:"

read "USERNAME"

echo " $USERNAME hi "


echo " Hi please enter password:"

read -s "PASSWORD"

echo -s " $PASSEORD  is visible "


