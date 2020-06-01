#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=srichakradhar/mlms

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker commit 05a6a20d94cf srichakradhar/mlms
docker tag mlms:1.0 srichakradhar/mlms:1.0

# Step 3:
# Push image to a docker repository
docker push srichakradhar/mlms:1.0