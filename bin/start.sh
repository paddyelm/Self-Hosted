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

# Check if the .env file exists
if [ ! -f "$ENV_FILE" ]; then
    echo "Error: Environment file '$ENV_FILE' not found."
    exit 1
fi

# Check if the docker-compose.yml file exists
if [ ! -f "$COMPOSE_FILE" ]; then
    echo "Error: Compose file '$COMPOSE_FILE' not found."
    exit 1
fi

# Run Docker Compose with the .env file
echo "Starting Docker Compose with environment file: $ENV_FILE..."
docker compose --env-file "$ENV_FILE" up -d

