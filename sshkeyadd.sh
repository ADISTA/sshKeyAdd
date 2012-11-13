#!/bin/bash
HOST=$1

if [ -s "$2" ]
then
    USERNAME="$2"
else
    USERNAME="$USER"
fi

if [ -s "$3" ]
then
    KEYFILE=$3
else
    KEYFILE="$HOME/.ssh/id_rsa.pub"
fi
if [ ! -f  "$KEYFILE" ]
then
	ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa
fi

KEY="`cat $KEYFILE`"
echo $KEY
#echo "adding your public key '$KEYFILE' to host '$HOST' for user '$USERNAME'"
ssh  -o PubkeyAuthentication=no -l $USERNAME $HOST "echo \"$KEY\" >>~/.ssh/authorized_keys"
