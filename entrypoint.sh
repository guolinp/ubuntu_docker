#!/bin/sh

# Start the ssh server
/etc/init.d/ssh restart

# Add a user
useradd -d /home/ubuntu -ms /bin/bash -g root -G sudo ubuntu 
passwd ubuntu << EOF
111111
111111
EOF

# Execute the CMD
exec "$@"
