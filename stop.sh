#!/bin/bash

# Move to the script's directory
cd "$(dirname "$0")"

# Stop and remove containers
echo ""
docker-compose down
echo ""

echo "> PROJECT STOPPED"
