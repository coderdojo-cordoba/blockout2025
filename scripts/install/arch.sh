#!/bin/bash
# This script installs the required dependencies to build the project on Arch Linux.

set -e

echo "Installing dependencies for Arch Linux..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm --needed gcc make sdl sdl_mixer mesa glu libxext alsa-lib
echo "Dependencies installed successfully."
