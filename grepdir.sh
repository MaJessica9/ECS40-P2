#! /bin/bash

if [[ "$#" -lt 2 ]]		# Need spaces! Not [x but [ x
then
  echo 'usage: grepdir.sh directory pattern [-grep option]*'
else
  if [ ! -d "$1" ]
  then 
    echo 'usage: grepdir.sh directory pattern [-grep option]*'
  else
  	if [ -z "$3" ]
  	then
  	  find "$1" -exec grep "$2" {} \; 2>/dev/null
  	elif [ -n "$3" ]
  	then
  	  find "$1" -exec grep  "$3" "$2" {} \; 2>/dev/null
  	elif [ -n "$4" ]
  	then
  	  find "$1" -exec grep  "$4" "$3" "$2" {} \; 2>/dev/null
  	fi
  fi
fi
