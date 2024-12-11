#!/bin/bash

# Update package list and upgrade all packages
sudo apt update && sudo apt upgrade -y

# Install desired packages
sudo apt install -y wireshark aircrack-ng john hashcat \
  crunch rsmangler cowpatty bettercap kismet

# Clean up
sudo apt autoremove -y
sudo apt clean

echo "Installation complete."