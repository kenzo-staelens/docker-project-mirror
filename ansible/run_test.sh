#!/usr/bin/bash
read -p "username: " user
read -s -p "password: " pass
echo "" # newline
if [ $# -eq 1 ]
then
    if [[ $user == "" ]] || [[ $pass == "" ]]
    then
        ansible-playbook kenzo-staelens.yml -i test_hosts.yml --extra-vars "nologin=true envname=\"$1\""
    else
        ansible-playbook kenzo-staelens.yml -i test_hosts.yml --extra-vars "username=$user password=$pass envname=\"$1\""    
    fi
else
    if [[ $user == "" ]] || [[ $pass == "" ]]
    then
        ansible-playbook kenzo-staelens.yml -i test_hosts.yml --extra-vars "nologin=true"
    else
        ansible-playbook kenzo-staelens.yml -i test_hosts.yml --extra-vars "username=$user password=$pass"    
    fi
fi
unset user
unset pass