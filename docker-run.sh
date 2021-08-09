# Building docker image
docker build -t --netowrk host react-image .

# Create a docker network
docker network create --driver bridge ngrok-net

# Running docker container
docker run --name react-app -d -p 8899:80 --net ngrok-net react-image

# (Optionally) exposing the local docker service using ngrok
docker run --name ngrok-react -d -p 4040:4040 --net ngrok-net wernight/ngrok ngrok http react-app:8899


# Getting the public url
curl `(docker port ngrok 4040)`/api/tunnels


# development container

docker run --name react-app -v .:/app -p 8899:3000 react-image