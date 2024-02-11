#!/bin/bash

# Running from curl.
clear
echo "How's it going? We're gonna get you ready..."

echo "Installing.. be patient.."
sudo pacman -S bluez blueman bluez-utils --noconfirm

# Probing >:3
clear
echo "Probing.."
sudo modprobe btusb

# Starting services
clear
echo "Starting Bluetooth service.."
sudo systemctl enable bluetooth && sudo systemctl start bluetooth

# DOIT!!!!!!!
clear
read -p "Do you want to reboot now to apply changes? Yup, we're already done :3 (Y/N)? " reboot_choice
if [[ $reboot_choice == "Y" || $reboot_choice == "y" ]]; then
    clear
    echo "Bye!!!!!!!"
    sudo reboot
fi