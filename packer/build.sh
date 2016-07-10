#!/bin/bash
set -eux

pushd ubuntu
~/bin/packer build -only=virtualbox-iso ubuntu.json
popd
