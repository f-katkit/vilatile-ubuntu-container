#!/bin/sh

while :
  do
    if [ ! -f /home/ubuntu/.ssh/id_dsa ]; then
      echo "ERROR : File not found /home/ubuntu/.ssh/id_dsa"
    else
      cat /home/ubuntu/.ssh/id_dsa

      echo "\n\n set secret to ~/.ssh/ directory"
    fi
    sleep 99999999
  done
