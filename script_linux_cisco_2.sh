
#!/bin/bash

# Script documenting commands executed during Linux Cisco NetAcad course
# Modules 11.1 through final module
# Navigate to the Documents folder inside the home directory
cd ~/Documents

# List detailed long format information for hello.sh
ls -l hello.sh

# Attempt to execute hello.sh in the current directory
./hello.sh

# Add execute permission for the owner of hello.sh
chmod u+x hello.sh

# Show updated permissions after adding execute access
ls -l hello.sh

# Execute the script now that it has execute permission
./hello.sh

# Change the owner of hello.sh to root using administrative privileges
sudo chown root hello.sh

# Execute hello.sh with administrative root privileges
sudo ./hello.sh

# Display the entire content of animals.txt
cat animals.txt

# Display the entire content of alpha.txt
cat alpha.txt

# Display the first ten lines of alpha.txt
head alpha.txt

# Display the last ten lines of alpha.txt
tail alpha.txt

# Display the first five lines of alpha.txt
head -n 5 alpha.txt

# Display the last five lines of alpha.txt
tail -n 5 alpha.txt

# Copy /etc/passwd into the current working directory
cp /etc/passwd .

# List files and directories in the current working directory
ls

# Return to the current user's home folder
cd ~

# Create a 50MB file filled with zeros at /tmp/swapex
dd if=/dev/zero of=/tmp/swapex bs=1M count=50

# Clone the entire contents of /dev/sda to /dev/sdb at the bit level
dd if=/dev/sda of=/dev/sdb

# List the contents of the Documents directory
ls Documents

# Run aptitude's hidden easter egg
aptitude moo

# List files and directories in long format with details
ls -l

# List files and directories in reverse alphabetical order
ls -r

# List files in long format, reverse alphabetical order
ls -l -r

# Same result using combined short flags
ls -rl
ls -lr

# Run the aptitude easter egg with a verbose modifier
aptitude -v moo

# Run the aptitude easter egg with increased verbosity
aptitude -vv moo

# Run the aptitude easter egg with maximum verbosity
aptitude -vvv moo

# Run the aptitude easter egg specifying individual verbose flags
aptitude -v -v moo

# Print the absolute path of the current working directory
pwd

# Change to the Documents directory (relative path)
cd Documents

# Change to the root directory
cd /

# Change to the sysadmin home folder using an absolute path
cd /home/sysadmin

# Navigate using a relative path
cd School/Art

# Change to the School folder
cd School

# Change to the Art folder
cd Art

# Move up one level to the parent directory
cd ..

# List files in /var/log using long format
ls -l /var/log/

# List files in /var/log sorted by modification time
ls -lt /var/log

# List files in /var/log sorted by file size
ls -l -S /var/log

# List files in /var/log sorted by file size in ascending order
ls -lSr /var/log

# List files in /var/log in reverse alphabetical order
ls -r /var/log

# Switch to the root user with a full login shell environment
su -

# Terminate the current shell session
exit

# Run the steam locomotive command animation
sl

# Run the steam locomotive command with administrative privileges
sudo sl
