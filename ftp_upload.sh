#!/bin/bash

HOST=$1
USER=$2
PASSWORD=$3
dir_results=$4

#  Subir el nuevo vídeo
ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd /
lcd $dir_results
mput *

EOF