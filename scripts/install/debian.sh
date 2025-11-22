#!/bin/bash
# This script installs the required dependencies to build the project on Debian.

set -e

echo "Installing dependencies for Debian..."
sudo apt-get update
sudo apt-get install -y g++ make libsdl1.2-dev libsdl-mixer1.2-dev libgl1-mesa-dev libglu1-mesa-dev libxext-dev
echo "Dependencies installed successfully."
