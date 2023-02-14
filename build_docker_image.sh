#!/bin/bash

echo `aws secretsmanager get-secret-value --region us-east-1 --secret-id docker_login_password| jq --raw-output '.SecretString'| jq --raw-output '."docker_login_password"'`| docker login --username danieletouk3 --password-stdin 

repo_name=danieletouk3
image_name=app
num=`docker images | sort -r | awk '{print $2}' | head -1`
version=$(echo $num + 1 | bc -l)

docker build -t $repo_name/$image_name:$version .


