#!/bin/sh

while :
  do
    if [ ! -f /home/ubuntu/.ssh/id_rsa ]; then
      echo "ERROR : File not found /home/ubuntu/.ssh/id_rsa"
    else
      echo "------------secret key------------\n"
      cat /home/ubuntu/.ssh/id_rsa
      echo "\n set secret to ~/.ssh/ directory"
    fi
    sleep 15
  done
