#!/bin/bash
set -e

DISTRO=${1:-fedora} # Default to fedora
DOCKERFILE="docker/${DISTRO}.Dockerfile"
IMAGE_NAME="blockout-builder-${DISTRO}"

if [ ! -f "${DOCKERFILE}" ]; then
    echo "Dockerfile not found for distribution: ${DISTRO}"
    echo "Available distributions: fedora, arch, ubuntu, debian"
    exit 1
fi

# Build the builder image
echo "Building the ${DISTRO} builder image..."
docker build -t ${IMAGE_NAME} -f ${DOCKERFILE} .

# Create a directory for the build output
mkdir -p build/${DISTRO}

# Run the build inside the container
echo "Running the build inside the ${DISTRO} container..."
docker run --rm -v "$(pwd)":/app ${IMAGE_NAME} /bin/bash -c "
    make -C ImageLib/src && \
    make -C BlockOut _linux64=1 _release=1 && \
    mv BlockOut/blockout build/${DISTRO}/
"

chmod +x build/${DISTRO}/blockout

echo ""
echo "Build successful!"
echo "The executable is now available at: build/${DISTRO}/blockout"
