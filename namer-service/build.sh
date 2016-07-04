#!/bin/sh

CONT_BUILD_NAME=namer-service-build

echo "-------------------------------------------------------------------------"

echo "... Building the container for building the code."
docker build -t ${CONT_BUILD_NAME} -f build/Dockerfile.build .
echo "-------------------------------------------------------------------------"

echo "... Extracting the distributable code."
rm -rf dist
mkdir dist
docker run --rm ${CONT_BUILD_NAME}  > dist/dist.tar.gz
tar tvf dist/dist.tar.gz || exit 1
echo "-------------------------------------------------------------------------"

docker build -t namer-service -f build/Dockerfile.dist .
