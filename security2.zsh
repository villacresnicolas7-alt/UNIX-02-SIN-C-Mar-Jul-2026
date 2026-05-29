# See the group main
id
id -gn    # only the name of the group main
# Create the archiv and see the group
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
# is the group main of the user
groups
#see the groups 
#See current group
echo "Grupo actual: $(id -gn)"
#Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt
# Install the package that contains the newgrp command
apt install util-linux-extra
# Create the group 'desarrolladores'
groupadd desarrolladores
# Switch current session to the 'desarrolladores' group
newgrp desarrolladores
# Create an empty file called archivo.txt
touch archivo.txt
# List all files with details (permissions, owner, group, size, date)
ls -la
# PID del shell actual
echo $$
# PID de la subshell
(echo $$)
# Create a file called despues_de_newgrp.txt in the home directory
touch ~/despues_de_newgrp.txt
# Show the file details (permissions, owner, group, size, date)
ls -la ~/despues_de_newgrp.txt