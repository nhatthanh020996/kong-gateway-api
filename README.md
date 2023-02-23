# kong-gateway-api

This repository includes a docker-compose.yml file for easy installation of Kong Gateway API and related components like PostgreSQL. However, I found that I was unable to successfully launch all of the services in the docker file at once using the familiar command:
```bash
docker-compose up -d
```
To ensure that all services run correctly, I need to run each one sequentially in the docker-compose.yml file. This can be done by running each service individually using the appropriate command. Once all services have been launched in this manner, the full system will be operational.
