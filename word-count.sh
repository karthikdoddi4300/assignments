#!/bin/bash 
echo "file existence and permissions checking using shell scripting"

files=$(ls)
 

if [ -e $1]; then 
    echo " file  exist"
    exit 1
fi 

if [  -r  $1] ; then
     echo " $1 is  readable "

fi
if [ -d $1 ]; then
    echo "$1---is a firectory "
    echo "$files"
    exit 1

elif [ -f $1 ]; then
    echo "$1 is a file"
    exit 1
fi 
