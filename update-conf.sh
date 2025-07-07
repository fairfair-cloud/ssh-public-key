#!/bin/bash

echo "[INFO] Pulling last public keys..."
git pull

echo "[INFO] Removing old public keys..."
rm /home/ubuntu/.ssh/authorized_keys

echo "[INFO] Installing new public keys..."
cp authorized_keys /home/ubuntu/.ssh/authorized_keys

echo "[INFO] Public key installed !"
