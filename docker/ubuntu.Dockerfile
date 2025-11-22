# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt-get update &&     apt-get install -y g++ make libsdl1.2-dev libsdl-mixer1.2-dev libgl1-mesa-dev libglu1-mesa-dev libxext-dev

# Set the working directory
WORKDIR /app

