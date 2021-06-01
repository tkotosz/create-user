#!/bin/bash

echo "Create docker environment..."
docker-compose up -d --remove-orphans --build

echo "Check ids for myuser user"
docker-compose exec test-service id myuser

echo "Destroy docker environment..."
docker-compose down --remove-orphans
