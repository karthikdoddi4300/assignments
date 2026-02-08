#!/bin/bash 
echo "file existence and permissions checking using shell scripting"

files=$(ls)

if [ -d $1 ]; then
    echo "$1---is a firectory "
    echo "$files"
    exit 1

elif [ -f $1 ]; then
    echo "$1 is a file"
    exit 1
fi 

if [! -e $1]; then 
    echo " file doesnt exist"
    exit 1
fi 

if [ ! -r  $1] ; then
     echo " $1 is not readable "

fi
