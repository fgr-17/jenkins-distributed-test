#!/bin/bash

KEYS_DIR=../agent-base/keys

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <email>"
    exit 1
fi

EMAIL=$1
mkdir -p "${KEYS_DIR}"
ssh-keygen -t rsa -b 4096 -C "$EMAIL" -f "$KEYS_DIR/id_rsa" -N ""

echo "SSH key generated successfully on ${KEYS_DIR}:"
ssh-keygen -lf "$KEYS_DIR/id_rsa.pub"
