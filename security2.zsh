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