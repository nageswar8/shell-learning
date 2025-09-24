#!/bin/bash

set -euo pipefail

error(){
    echo "there is error"
}

trap error ERR


echo "Hello"
echo "World"

dsjndos

echo "After error"