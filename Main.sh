#!/bin/bash

# Beginning of the script
clear
echo "Starting.."
echo "Installing.. be patient.."
sudo pacman -S bluez blueman bluez-utils --noconfirm
echo "Finished!"

# Probing for the btusb service
clear
echo "Probing.."
sudo modprobe btusb
echo "Probed!"

# Starting services
clear
echo "Starting Bluetooth service.."
sudo systemctl enable bluetooth && sudo systemctl start bluetooth
echo "Service started.."

# Reboot or nah?
clear
read -p "Do you want to reboot now to apply changes? Yup, we're already done :3 (Y/N)? " reboot_choice
if [[ $reboot_choice == "Y" || $reboot_choice == "y" ]]; then
    clear
    echo "Bye!!!!!!!"
    echo "Made by strange"
    sudo reboot
fi
