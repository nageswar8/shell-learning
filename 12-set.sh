#!/bin/bash

set -euo pipefail

error(){
    echo "there is error $LINENO and command $BASH_COMMAND"
}

trap error ERR


echo "Hello"
echo "World"

dsjndos

echo "After error"