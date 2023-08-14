#!/bin/zsh

# Define variables
VERSION="0.9.0"
TARBALL="dist/elc-${VERSION}.tar.gz"
CHECKSUM_FILE="dist/checksums.txt"

# Create source tarball
tar -czvf "$TARBALL" src/**/* docs/**/*

# Calculate checksum
shasum -a 256 "$TARBALL" >> "$CHECKSUM_FILE"

echo "Source tarball created: $TARBALL"
echo "Checksums saved in: $CHECKSUM_FILE"
