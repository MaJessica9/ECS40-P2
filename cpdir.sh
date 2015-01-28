#! /bin/bash

if [[ ! -d "$1" || ! -d "$2" || "$#" -ne 3 || -f "$3" ]]
then
  echo usage: cpdirs.sh source_directory1 source_directory2 dest_directory
else
  if [[ ! -d "$3" ]]
  then
    mkdir "$3"
  fi
  cp --preserve "$1"/* "$3" 2>/dev/null
  cp -u --preserve "$2"/* "$3" 2>/dev/null
fi 
