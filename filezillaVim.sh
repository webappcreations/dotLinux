#! /usr/bin/bash

# FILE = '$1'
#  exec urxvt -e bash -i -c 'vim $FILE'
echo $1
exec urxvt -e bash -i -c 'vim $1'
#exec urxvt -hold -e bash -i -c 'vim $1'
