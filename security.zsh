id
#Displays the current user's UID, GID, and groups
groups
#Shows the groups the current user belongs to
cat /etc/passwd 
#Displays all system users and account information
cat /etc/passwd | head -10
#Shows the first 10 lines of /etc/passwd
touch test.txt 
#Creates an empty file named test.txt
ls -la 
#Lists all files and directories with detailed information, including hidden files
cat /etc/group | head -10 
#Displays the first 10 lines of /etc/group, which contains system group information
groups 
#Shows the groups of the current user
groups $USER 
#Shows the groups of a specific user stored in the $USER variable
id -u
id -g
id -G
#Displays all group IDs of the current user
mkdir ~/proyecto_unix/
#Creates a directory named "proyecto_unix" inside the user's home folder (~)
ls -la ~/proyecto_unix/
#Lists all files inside "proyecto_unix" with detailed info
grep "desarrolladores\|operaciones\|servicios_web" /etc/group
#Search for specific group names within the system group file.
groupadd --help
#Display the help menu and available options for creating groups.
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
#Filter the configuration file to show the defined range and limits for Group IDs.
addgroup diseo
#Create a new standard user group named "diseo".
addgroup --gid 2100 marketing
#Create a group named "marketing" with a specific Group ID of 2100.
addgroup --system cache_web
#Create a system group for background services or system processes.
grep "diseo\|marketing\| cache_web" /etc/group
#Verify the creation of the specified groups by searching the system group database.
usermod -aG desarrolladores $USER
#Append the current user to the "desarrolladores" group without removing existing ones.
usermod -aG diseo $USER
#Add the current user to the "diseo" secondary group to grant relevant permissions.