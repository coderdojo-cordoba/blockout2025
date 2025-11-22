# Use Arch Linux as the base image
FROM archlinux:latest

# Update the system and install dependencies
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm --needed base-devel git sdl sdl_mixer mesa glu libxext alsa-lib

# Set the working directory
WORKDIR /app
