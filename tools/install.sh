#!/bin/bash
 
# This script is used for install the blog.sh to the "/usr/bin/" directory.
# So that you can use it in any directory just like a shell command.
# Enjoy it.

# Give the access permission to all users.
sudo chmod a+x ./blog.sh

# Copy it to the directory "/usr/bin"
sudo cp ./blog.sh /usr/bin/blog

# OK!
echo 'OK!'
