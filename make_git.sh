#!/bin/sh

# Install required packages
apk add build-base curl-dev expat-dev openssl-dev zlib-dev perl autoconf tcl tk gettext

# Download the Git source code
wget https://github.com/git/git/archive/refs/tags/v2.49.0.tar.gz

# Extract archive
tar -xzf v2.49.0.tar.gz
cd git-2.49.0

# Configure and compile
make configure
./configure --prefix=/usr
make all
make install

# Verify installation
git --version

echo "Git installation completed successfully!"