# mcserver-proxy

A simple Docker image made to proxy Minecraft server with nginx.
It was created for a personal project and was designed to be deployed on OCI's Docker Swarm and proxied to a Minecraft server running on a home server.

## docker-compose

Example of `docker-compose.yml`

```yaml
version: "3.3"

services:

  proxy:
    image: ghcr.io/viasnake/mcserver-proxy
    ports:
      - target: 25565
        published: 25565
        protocol: tcp
        mode: host
      - target: 19132
        published: 19132
        protocol: udp
        mode: host
    environment:
      - JE_BACKEND_ADDRESS=127.0.0.1
      - JE_BACKEND_PORT=25565
      - BE_BACKEND_ADDRESS=127.0.0.1
      - BE_BACKEND_PORT=19132
```

On the directory where you created `docker-compose.yml`, run `docker-compose up -d` to start it.

## Environment variables

### JE_BACKEND_ADDRESS

Default: `127.0.0.1`
The address of backend where Miecraft: Java Edition is running.

### JE_BACKEND_PORT

Default: `25565`
The port of backend where Miecraft: Java Edition is running.

### BE_BACKEND_ADDRESS

Default: `127.0.0.1`
The address of backend where Miecraft: Bedrock Edition is running.

### BE_BACKEND_PORT

Default: `19132`
The port of backend where Miecraft: Bedrock Edition is running.
