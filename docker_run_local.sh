# Vars
CONTAINER_NAME=chrism00ch/terraria

# Build docker image
docker build -t $CONTAINER_NAME .

# Run locally, attached
docker run \
  --restart unless-stopped \
  -v terraria-data:/app/Worlds \
  -e PORT=7777 \
  -p 7777:7777 \
  -it \
$CONTAINER_NAME ./server.sh