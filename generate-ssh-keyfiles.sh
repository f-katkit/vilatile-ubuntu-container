#!/bin/sh

ssh-keygen -t rsa -P "" << EOF

EOF

if [ ! -f /home/ubuntu/.ssh/id_rsa.pub ]; then
        echo "ERROR : File not found /home/ubuntu/.ssh/id_rsa.pub "
else
        cat /home/ubuntu/.ssh/id_rsa.pub >> /home/ubuntu/.ssh/authorized_keys
        chmod 600 /home/ubuntu/.ssh/authorized_keys
fi
