#!/bin/bash

# Set variables
COMPOSE_FILE="docker-compose.yml"
ENV_FILE=".env"

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if Docker is installed
if ! command_exists docker; then
    echo "Error: Docker is not installed. Please install Docker and try again."
    exit 1
fi


# Stop Docker Compose services
docker compose --env-file "$ENV_FILE" down

