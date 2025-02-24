#!/bin/bash

# Move to the script's directory (in case it's run from elsewhere)
cd "$(dirname "$0")"

# Pull the latest version
git pull
echo ""

# Start Docker containers
docker-compose up -d
echo ""

# Wait a few seconds to ensure services are running
sleep 3

# Open URLs in the default browser
xdg-open "http://localhost:8081/"  # phpMyAdmin
xdg-open "http://localhost:8080/"  # Web app (PHP-Apache)

echo "> PROJECT RUNNING"
