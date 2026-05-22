sudo echo "hola" > /etc/archivo_protegido
#permision denied for the sudo only was ejec in the next line
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
#this command was made three parts, the echo was print like user normaly, th pipe line is the out to the command and the tee was eject like root for the permiss, finally the dev null avoid the contain in the terminal 
cat /etc/archivo_protegido
#let me see the archiv absolutly
sudo sh -c 'echo "chao" >> /etc/archivo_protegido 
# add a chao to the command exist in the finaly
sudo su && sudo -i
#we pass temporaly in the mode root
echo "$home"
#show what are in it, extend the direcotory
echo '$HOME'
#printe home, show the string
echo 'echo' "hola desde mi primer"' >> hola.sh
#the echo print the #!/bin/sh and hola.sh is the name to de refactory 
ls -l hola.sh
# see the list of the directory
chmod +x hola.sh
#give acces to the program ejecute correct forme
ls - hola.sh
#another time see the list but with the acces give in the another time
./hola.sh
#ejecte the shell in the actual
apt install cowsay
#need sudo beacuse need to instal a packet
mkdir ~/mi_carpeta
#another view to the directory more spacecly
touch /etc/prueba.txt
#requere to sudo beacuse need too add in the directory
ls /etc
#view the archive ejectuble
#see the list en the directory
ls -l prueba.txt
#view the list in te prueba.txt
chmod 755 prueba.txt
#ejectute witj permisios 755
chmod 600 prueba.txt
#creat the archive with permision 600



#final

# View the numeric identity of the current user
# Shows: user ID, primary group, and secondary groups
id

# View all system users (first 10 lines)
cat /etc/passwd | head -10

# View all system groups (first 10 lines)
cat /etc/group | head -10

# Check which groups the current user belongs to
groups
groups $USER

# View numeric UID and GID values separately
id -u   # Returns only the numeric User ID
id -g   # Returns only the primary Group ID
id -G   # Returns all Group IDs the user belongs to

# Filter a specific group entry from /etc/group
# Format: group_name:password:GID:members
cat /etc/group | grep codespace

# Create a directory and verify its group owner
# The third column in ls -la output shows the group owner
mkdir ~/proyecto_unix/
ls -la ~/proyecto_unix/

# Show group names instead of just IDs
id -Gn

# Check identity of a specific user (not just current)
id root

# View only group names the current user belongs to
groups root

# Long format of /etc/passwd to see all fields:
# username:password:UID:GID:comment:home:shell
awk -F: '{print $1, $3, $4}' /etc/passwd | head -10
