# Example-1

Example number 1 from Chapter 5 of [Bootstrapping Microservices](http://bit.ly/2o0aDsP).

In Chapter 5 of Bootstrapping Microservices you learn how to make microservices talk to each other with HTTP requests and RabbitMQ messages.

You need Docker and Docker-Compose installed to run this.

Boot it up from the terminal using:

    docker-compose up --build

# use minikube to demonstrate hot reload in docker

1. mount file into minikube by powershell
```Powershell
$current_directory = (pwd).path
minikube mount $current_directory:/src
```

2. replace relative path to solid path in volume in docker-compose.yml

```yaml
##before
volumes:
      - /tmp/video-streaming/npm-cache:/root/.npm:z
      - ./video-streaming/src:/usr/src/app/src:z
      - ./video-streaming/videos:/usr/src/app/videos:z


##after
volumes:
      - /tmp/video-streaming/npm-cache:/root/.npm:z
      - /src/video-streaming/src:/usr/src/app/src:z
      - /src/video-streaming/videos:/usr/src/app/videos:z
```