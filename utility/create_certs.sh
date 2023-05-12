#!/usr/bin/bash
openssl req -nodes -newkey rsa:2048 -keyout loadbalancer.key -x509 -days 365 -out loadbalancer.crt