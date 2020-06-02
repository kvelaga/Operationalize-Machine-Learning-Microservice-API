#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=srichakradhar/mlms

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=srichakradhar/mlms:1.0 mlms --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# kubectl expose deployment mlms --type=LoadBalancer --port=8000 --target-port=80
kubectl port-forward deployment/mlms 8000:80
