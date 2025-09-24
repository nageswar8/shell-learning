#!/bin/bash

set -euo pipefail

error(){
    
}

trap 'echo "there is error $LINENO and command $BASH_COMMAND"' ERR


echo "Hello"
echo "World"

dsjndos

echo "After error"