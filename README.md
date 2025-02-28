# database-services

To start off please create ashared network
```
docker network create shared_network
```
Once you have the network created you should have `docker-compose` available

Create a `.env` from the `.env.example` then populate the values

At the root of the project depending on your compose version

```sh
# Lower versions
docker-compose up --build -d
# Version 2
docker compose up --build -d
```
This will docwnload the docker images and start them
Once the process has completed navigate to [Portainer](http://localhost:9000) to access your containers
