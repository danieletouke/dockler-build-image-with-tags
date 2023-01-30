#!/bin/bash

#Clone my github repo

FILE=~/docker_project

if [ -d "$FILE" ];
then
    echo "$FILE exists."
else
    mkdir -p $FILE
fi

cd $FILE  #cd ~/docker_project

PROJECT=dockler-buil-image-with-tags


if [ -d "$PROJECT" ];
then
    echo "$PROJECT exists."
else
    git clone https://github.com/danieletouke/dockler-buil-image-with-tags.git
fi


cd dockler-buil-image-with-tags/

if [ $?==0];
then
    echo "great job!!"
fi

git pull
