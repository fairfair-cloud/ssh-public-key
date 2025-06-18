#!/bin/bash

git pull

rm /home/ubuntu/.ssh/authorized_keys

cp authorized_keys /home/ubuntu/.ssh/authorized_keys

ssh-agent -k
