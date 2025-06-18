#!/bin/bash

eval $(ssh-agent)
ssh-add /home/ubuntu/.ssh/github

git pull

rm /home/ubuntu/.ssh/authorized_keys

cp authorized_keys /home/ubuntu/.ssh/authorized_keys

ssh-agent -k
