#!/bin/sh

ssh-keygen -t dsa -P "" << EOF

EOF

if [ ! -f /home/ubuntu/.ssh/id_dsa.pub ]; then
        echo "ERROR : File not found /home/ubuntu/.ssh/id_dsa.pub "
else
        cat /home/ubuntu/.ssh/id_dsa.pub >> /home/ubuntu/.ssh/authorized_keys
        chmod 600 /home/ubuntu/.ssh/authorized_keys
fi
