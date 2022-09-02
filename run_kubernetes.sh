#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=huzaynbolt/prediction_ml

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy prediction-ml --image=huzaynbolt/prediction_ml




# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/prediction-ml-86db968d8d-8rnck --address 0.0.0.0 8000:80

