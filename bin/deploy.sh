#!/bin/bash

if [[ $1 = "prod" || $1 = "dev" ]] && [[ $2 = "down" || $2 = "up" ]]; then
    cd ..
    fileEnv="docker-compose.${1}.yaml"
    downOrUp=$2
    echo "Running docker-compose -f docker-compose.yaml -f $fileEnv $downOrUp"
    docker-compose -f docker-compose.yaml -f $fileEnv $downOrUp
else
    echo 'Need to follow format ./deploy prod|dev down|up'
fi

# LINUX
#           sudo chmod u+x prod.sh

# WINDOWS   (To execute the .sh file, we will need a Bash interpreter. Windows Terminal won't work)
#           icacls ".\bin\deploy.sh" /grant:r "UserName:(RX)"


# Execution instructions
# docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml up --> ./deploy.sh
# docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml down --> ./deploy.sh 