#!/bin/bash

set -e

./scripts/swagger-gen.sh

todo-list-server --port=12345