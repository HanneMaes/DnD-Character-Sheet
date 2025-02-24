#!/bin/bash

# Move to the script's directory
cd "$(dirname "$0")"

# Pull the latest version
git pull
echo ""

# Ensure old containers are removed
docker compose down --remove-orphans
docker container prune -f
docker volume prune -f
echo ""

# Start Docker containers
docker compose up -d --force-recreate --build
echo ""

# Wait a few seconds to ensure services are running
sleep 3

# Open URLs in the default browser
xdg-open "http://localhost:8081/"  # phpMyAdmin
xdg-open "http://localhost:8080/"  # Web app (PHP-Apache)

echo "> PROJECT RUNNING"

# Enable live reload (watch for changes)
echo "> Watching for changes..."
docker exec -it php-apache nodemon --legacy-watch /var/www/html
