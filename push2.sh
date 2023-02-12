#!/bin/bash

repo_name=danieletouk3
image_name=app
num=`docker images | sort -r | awk '{print $2}' | head -1`
version=$(echo $num + 1 | bc -l)

docker build -t $repo_name/$image_name:$version .

echo "old version docker images"
docker images

docker push $image_name:$version

docker rmi $image_name:$num -f

echo "New version" 
docker images