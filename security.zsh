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