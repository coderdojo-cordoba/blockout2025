#!/bin/bash
# This script installs the required dependencies to build the project on macOS.

set -e

echo "Installing dependencies for macOS..."

# Check for and install Xcode Command Line Tools
if ! xcode-select -p &>/dev/null; then
    echo "Xcode Command Line Tools not found. Installing..."
    xcode-select --install
else
    echo "Xcode Command Line Tools are already installed."
fi

# Check for and install Homebrew
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

echo "Installing Homebrew packages..."
brew install sdl2 sdl2_mixer

echo "Dependencies installed successfully."
