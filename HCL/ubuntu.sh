 #!/bin/bash
 
# Create .ssh directory and set permissions (if it is not already created)
mkdir -p /home/ec2-user/.ssh
chmod 700 /home/ec2-user/.ssh

# Append the passed public key to the authorized_keys
echo "$BASTION_PUBLIC_KEY" >> /home/ec2-user/.ssh/authorized_keys
chmod 600 /home/ec2-user/.ssh/authorized_keys
chown ec2-user:ec2-user /home/ec2-user/.ssh/authorized_keys


sudo apt update

sudo apt install -y default-jre

sudo apt install -y default-jdk

sudo apt install -y  git mysql-client wget vim telnet htop python3 chrony net-tools

