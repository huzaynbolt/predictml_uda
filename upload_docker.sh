#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
  dockerpath=huzaynbolt/prediction_ml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker tag prediction_ml:latest $dockerpath:latest
docker push $dockerpath
