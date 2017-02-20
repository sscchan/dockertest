#!/bin/bash

# Stop any existing docker-composed containers
docker-compose down

# Rebuild the docker-composed containers
docker-compose up --build -d

# Run Test
docker-compose run web npm test
docker-compose run runservice npm test 