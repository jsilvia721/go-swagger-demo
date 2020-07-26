#!/bin/bash

set -e

./scripts/swagger-gen.sh

go install ./cmd/todo-list-server/ #install server binary

todo-list-server --port=12345