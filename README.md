# Start project
1. Start containers: `docker-compose up -d`
2. Web access:
    - Web App (PHP-Apache): http://localhost:8080/
    - phpMyAdmin: http://localhost:8081/

# I moved the location of the project and I'm getting errors
Stop, remove and rebuild everything: 
```
docker-compose down -v  # Stops and removes containers + volumes (database data is deleted)
docker-compose build --no-cache  # Rebuilds everything from scratch
docker-compose up -d  # Starts the project again
```

# Stop project
`docker-compose down`

# Delete project and remove everything
`docker-compose down -v`
