#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath='kel2ck/project-four-udacity'

# Step 2:  
# Authenticate & tag
docker login #\
    #--docker-username=kel2ck \
    #--docker-password=futocat@1986
    
docker image tag project-four-udacity $dockerpath

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath