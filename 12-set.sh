#!/bin/bash

set -euo pipefail

trap 'echo "there is error $LINENO and command $BASH_COMMAND"' ERR


echo "Hello"
echo "World"

dsjndos

echo "After error"