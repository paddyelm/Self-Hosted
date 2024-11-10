# Self-Hosted

Self-hosted server setup using Docker. This setup includes Nginx, Homer, and Home Assistant.

## Installation

### Prerequisites

Before you begin, ensure you have the following installed on your server:

- **Docker**: Docker is required to run the containers. You can install Docker by following the instructions on the [official Docker website](https://docs.docker.com/get-docker/).

- **Docker Compose**: Docker Compose is used to manage multi-container Docker applications. You can install Docker Compose by following the instructions on the [official Docker Compose website](https://docs.docker.com/compose/install/).

### Running the Server

1. Clone the repository containing the `docker-compose.yml` file to your server.

2. Navigate to the directory containing the `docker-compose.yml` file.

3. Run the following command to start the services:

```bash
docker-compose up -d
```
This command will start all the services defined in the `docker-compose.yml` file in detached mode.

4. Once the services are up and running, you can access the Homer dashboard by navigating to the server's IP address in your web browser. The Homer dashboard will be the homepage.

### Configuration

#### Homer Configuration
The configuration for Homer is located in the homer/homer-config/config.yml directory. You can modify this file to customize the Homer dashboard according to your needs.

#### Nginx Configuration
The Nginx configuration files are located in the nginx/nginx.config directory. You can edit these files to change the Nginx server settings as required.

Make sure to restart the respective services after making any configuration changes to apply them.