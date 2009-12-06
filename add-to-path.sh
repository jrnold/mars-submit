#!/bin/bash
## Check if $HOME/bin is in the path
## If not then add it to the users path
if [ -n "`echo -n $PATH | tr ":" "\n" | grep \"\($HOME\|~\)/bin\"`" ] 
then
    echo "Adding $HOME/bin to the path"
    [ -d  "$HOME/bin" ] || {echo "Creating $HOME/bin"; mkdir $HOME/bin;}
    cat >> $HOME/.bashrc <<EOF
## Added by r-torque
export PATH="$HOME/bin:$PATH"
EOF
fi

