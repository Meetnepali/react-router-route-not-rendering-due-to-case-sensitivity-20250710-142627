#!/bin/sh
set -e

if ! command -v docker >/dev/null 2>&1; then
  echo "[ERROR] Docker is not installed. Please install Docker before running this script."
  exit 1
fi

echo "[INFO] Building Docker image..."
docker build -t react-router-case-sensitive-bug .

if [ $(docker ps -aq -f name=rr-case-sensitive-task) ]; then
  echo "[INFO] Removing existing container..."
  docker rm -f rr-case-sensitive-task >/dev/null 2>&1 || true
fi

echo "[INFO] Starting container on port 3000..."
docker run --name rr-case-sensitive-task -d -p 3000:3000 react-router-case-sensitive-bug

# Wait for the container to initialize
echo "[INFO] Waiting for the server to be ready..."
retries=0
until curl -s http://localhost:3000 >/dev/null 2>&1; do
  sleep 2
  retries=$((retries+1))
  if [ $retries -gt 15 ]; then
    echo "[ERROR] Server did not start on port 3000. Exiting."
    exit 1
  fi
done
echo "[SUCCESS] Application is running at http://localhost:3000"