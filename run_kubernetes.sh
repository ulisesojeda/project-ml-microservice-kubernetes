#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ulises22/ci

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath prediction-app --port=80

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/prediction-app  8000:80

