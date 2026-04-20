sudo echo "hola" > /etc/archivo_protegido
#permision denied for the sudo only was ejec in the next line
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
#this command was made three parts, the echo was print like user normaly, th pipe line is the out to the command and the tee was eject like root for the permiss, finally the dev null avoid the contain in the terminal 
