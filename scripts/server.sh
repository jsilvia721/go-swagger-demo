#!/bin/bash

set -e

./scripts/swagger-gen.sh

if ! command -v todo-list-server &> /dev/null
then
    echo "todo-list-server could not be found, installing binary"
    go install ./cmd/todo-list-server/
fi

todo-list-server --port=12345