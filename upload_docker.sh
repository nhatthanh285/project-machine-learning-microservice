#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=thanhtran285/ml-microservice-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=thanhtran285
docker tag ml-microservice-api $dockerpath
docker push $dockerpath

# Step 3:
# Push image to a docker repository
