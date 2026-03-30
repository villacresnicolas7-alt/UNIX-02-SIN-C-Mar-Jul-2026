#Updates the list of available packages from the repositories.
sudp apt update
#Installs the latest available updates for all installed packages.
sudo apt upgrade
#Installs the **parted** disk partitioning tool on the system.
sudo apt install parted
#Shows disk partition details, prints a separator, then lists block devices with filesystem info.
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e
#Checks if the system uses UEFI or BIOS and prints the result.
[ -d/sys/firmware/efi ] && echo "UEFI" || echo "BIOS" 
