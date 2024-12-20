#!/bin/bash

# Create the user wilder without super-user privileges
# Creating user wilder without super-admin privileges
sudo useradd -m -d /home/wilder -G wilder -s /bin/bash wilder

# Create the /home/share directory if it doesn't already exist
sudo mkdir -p /home/share

# Set the permissions for wilder and the wilder group to read write and execute
sudo chown wilder:wilder /home/share
sudo chmod 770 /home/share 

# Create the 'passwords.txt' file as wilder
sudo -u wilder touch /home/share/passwords.txt

# Give read and write permissions to wilder user for'passwords.txt'
sudo chmod 660 /home/share/passwords.txt

# Create the share group if it doesn't already exist
if ! getent group share > /dev/null; then
    sudo groupadd share
fi

# Add wilder to the share group
sudo usermod -aG share wilder

# Add the current user to the share group
sudo usermod -aG share $(whoami)

# Change permissions to allow share group to read and write to the '/home/share' directory and all files inside it
sudo chmod -R 770 /home/share
sudo chown -R :share /home/share

# Create a welcome message for wilder user
echo "Bienvenue sur votre session, Wilder!" | sudo tee -a /home/wilder/.bash_profile