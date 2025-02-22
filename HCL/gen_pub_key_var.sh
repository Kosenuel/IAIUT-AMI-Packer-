#!/bin/bash

# Read the public key content from the file
BASTION_PUBLIC_KEY=$(cat output/Ansible_key.pub)

# Append the new content to the variables file
# cat <<EOF >> variables.pkrvars.hcl
# bastion_public_key = "${BASTION_PUBLIC_KEY}"
# EOF

export  BASTION_PUBLIC_KEY="${BASTION_PUBLIC_KEY}"

# You can run this script after building the bastion image to generate the public key variable. 