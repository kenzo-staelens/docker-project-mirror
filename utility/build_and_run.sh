#!/usr/bin/bash
#usage build_and_run.sh init_flask:flask-iac 8001 Kenzo
if [ $# -eq 2 ] || [ $# -eq 3 ]
then
    docker build . -t $1
    if [ $# -eq 2 ] #mogelijkheid tot gebruik van default env var
    then
        echo $3
        echo "left empty"
        docker run -d -p $2:5000 --name flask_container --rm $1
    elif [ $# -eq 3 ]
    then
        echo $#
        docker run -d -p $2:5000 --name flask_container -e NAME="$3" --rm $1
    fi
else
    echo "expected 2 or 3 parameters, was given $#"
fi