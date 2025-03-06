#!/bin/bash

# Define repository URLs
FRONTEND_REPO_URL="https://github.com/priyanshu-rawat-2205/quicasses_frontend.git"
BACKEND_REPO_URL="https://github.com/priyanshu-rawat-2205/quicasses_backend.git"

# Clone frontend repository if not already cloned
if [ ! -d "frontend" ]; then
    echo "Cloning frontend repository..."
    git clone "$FRONTEND_REPO_URL" frontend
else
    echo "Frontend repository already exists, skipping clone."
fi

# Clone backend repository if not already cloned
if [ ! -d "backend" ]; then
    echo "Cloning backend repository..."
    git clone "$BACKEND_REPO_URL" backend
else
    echo "Backend repository already exists, skipping clone."
fi

# Ensure Docker and Docker Compose are installed
if ! command -v docker &> /dev/null || ! command -v docker-compose &> /dev/null
then
    echo "Docker and Docker Compose are required. Please install them first."
    exit 1
fi

# Build and run the application using Docker Compose
echo "Building and starting services..."
docker-compose up --build -d

echo "Application setup complete. Access it via the provided URL."
echo "http://localhost:3000"
