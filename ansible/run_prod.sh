#!/usr/bin/bash
read -p "username: " user
read -s -p "password: " pass
echo "" # newline
ansible-playbook kenzo-staelens.yml -i prod_hosts.yml --extra-vars "username=$user password=$pass $@"
unset user
unset pass