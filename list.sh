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