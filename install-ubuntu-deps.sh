#!/usr/bin/env bash
set -euo pipefail

if ! command -v apt-get >/dev/null 2>&1; then
  echo "This installer is intended for Ubuntu/Debian systems with apt-get available." >&2
  exit 1
fi

packages=(
  build-essential
  libsdl1.2-dev
  libsdl-mixer1.2-dev
  libglu1-mesa-dev
  libgl1-mesa-dev
  libxext-dev
  libasound2-dev
)

echo "Updating package index..."
sudo apt-get update

echo "Installing BlockOut II build dependencies..."
sudo apt-get install -y "${packages[@]}"

echo "Dependency installation complete."
