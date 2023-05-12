#!/usr/bin/bash
if [ $( podman ps -a -q | wc -c ) -eq 1 ]
then
( podman stop $(podman ps -a -q) ) || echo ""
fi