#!/bin/bash

# Docker Hub username
DOCKERHUB_USERNAME="mithun100"

# Image tag for the Docker images
IMAGE_TAG="latest"

# Build and push downstream application Docker image
echo "Building downstream Docker image..."
docker build --no-cache -t "${DOCKERHUB_USERNAME}/nodejs-downstream:${IMAGE_TAG}" -f ../downstream/Dockerfile ../downstream

echo "Pushing downstream-app Docker image..."
docker push "${DOCKERHUB_USERNAME}/nodejs-downstream:${IMAGE_TAG}"

# Build and push upstream application Docker image
echo "Building upstream  Docker image..."
docker build --no-cache -t "${DOCKERHUB_USERNAME}/nodejs-upstream:${IMAGE_TAG}" -f ../upstream/Dockerfile ../upstream

echo "Pushing upstream  Docker image..."
docker push "${DOCKERHUB_USERNAME}/nodejs-upstream:${IMAGE_TAG}"

# echo "Building loadgen"
# docker build --no-cache -t "${DOCKERHUB_USERNAME}/loadgen-image:${IMAGE_TAG}" -f ../loadgen/Dockerfile ../loadgen
#
# echo "Pushing loadgent Docker image..."
# docker push "${DOCKERHUB_USERNAME}/loadgen-image:${IMAGE_TAG}"

echo "Images have been built and pushed to Docker Hub successfully!"