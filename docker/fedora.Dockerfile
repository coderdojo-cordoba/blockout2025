# Use Fedora 40 as the base image
FROM fedora:40

# Install build dependencies
RUN dnf install -y git gcc gcc-c++ make \
    SDL-devel SDL_mixer-devel mesa-libGL-devel mesa-libGLU-devel \
    libXext-devel alsa-lib-devel

# Set the working directory
WORKDIR /app
