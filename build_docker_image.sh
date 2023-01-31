#! /bin/bash

`aws secretsmanager get-secret-value --region us-east-1 --secret-id docker_login_password| jq --raw-output '.SecretString'| jq --raw-output '."docker_login_password"'`| docker login --username danieletouk3 --password-stdin 

old_tag=`docker images | awk '{print $2}' | head -2| tail -1`

new_tag=($new_tag +1)

docker build -t danieletouk3/codix-assignment:$new_tag .




