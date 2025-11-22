#!/bin/bash
# This script installs the required dependencies to build the project on Fedora.

set -e

echo "Installing dependencies for Fedora..."
sudo dnf install -y gcc-c++ make SDL-devel SDL_mixer-devel mesa-libGL-devel mesa-libGLU-devel libXext-devel alsa-lib-devel
echo "Dependencies installed successfully."
