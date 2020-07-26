#!/bin/bash

set -e

rm -rf restapi/
rm -rf models/
swagger generate server -A todo-list -f ./swagger.yml