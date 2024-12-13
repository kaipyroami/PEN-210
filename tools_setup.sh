#!/bin/bash

# Check if the OS is Kali Linux
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" != "kali" ]; then
        echo "This script is intended to run on Kali Linux."
        exit 1
    fi
else
    echo "This script is intended to run on Kali Linux."
    exit 1
fi

# Update package list and upgrade all packages
sudo apt update && sudo apt upgrade -y

# Install desired packages
sudo apt install -y wireshark aircrack-ng john hashcat \
  crunch rsmangler cowpatty bettercap kismet wordlists

# Clean up
sudo apt autoremove -y
sudo apt clean

echo "Installation complete."