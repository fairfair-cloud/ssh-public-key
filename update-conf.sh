#!/bin/bash

if [ -z "$1" ]; then
    echo "[ERROR] Provide environement (dev, staging, live)"
    exit 1
fi

echo "[INFO] Pulling last public keys..."
git pull

echo "[INFO] Removing old public keys..."
rm /home/ubuntu/.ssh/authorized_keys

echo "[INFO] Installing new public keys..."
cp authorized_keys_$1 /home/ubuntu/.ssh/authorized_keys

echo "[INFO] Public key installed !"
