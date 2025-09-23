#!/bin/bash

echo "all vars passed : $@"
echo "all vars passed : $*"
echo "current dir $PWD"
echo "first vaiable $0"
echo "previous command success $?"
echo "who is running: $USER"
echo "Home Directory : $HOME"
echo " PID of the script: $$"
sleep 10 &
echo "previous pid $!"