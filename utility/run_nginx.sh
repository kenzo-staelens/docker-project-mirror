#!/usr/bin/bash
docker run -p 8000:80 --rm -v ./:/conf:z -v ./nginx.conf:/etc/nginx/nginx.conf:ro nginx:1.21.6