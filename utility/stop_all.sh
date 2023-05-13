#!/usr/bin/bash
if [ $( podman ps -a -q | wc -c ) -ne 1 ]
then
( podman stop $(podman ps -a -q) ) || echo ""
fi