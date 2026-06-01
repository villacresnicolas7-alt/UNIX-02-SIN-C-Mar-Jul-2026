#!/bin/bash
PUBLISHER="No Starch Press"

print_name(){
    local name
    name="Black Hat Bash"
    echo "${name} by ${PUBLISHER}"
}

print_name

echo "Variable ${name} will not be printed because it is a local variable."
#cual es la diferencia entre una variable local y global y que particularidad en la invocacion de funciones en bash
#The BASH shell allows us to use two types of variables: local variables and global variables (environment variables).
#Basically, the difference between them is that a local variable has a value only within our current shell, that is, within our session.
#No other user has access to it. On the other hand, global variables are available to all shells. 
#However, it is important to clarify this last concept:
#global variables are inherited from the current shell by any shells created from it (subshells or child processes).
