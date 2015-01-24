#! /bin/bash

if [[ "$#" -lt 2 || "$#" -gt 3 ]]		# Need spaces! Not [x but [ x
then
  echo 'not 2 or 3 args'

else
#  x="$3"			# To assign a value, no spaces!
#  echo '-*'
  if [ ! -d "$1" ]
  then 
    echo '1 not dir'
#  elif [[ "$3" != -* ]]
#  then
#    echo 'has no -'
  else
  	find "$1" -exec grep "$2" {} \; 2>/dev/null
  fi
fi
