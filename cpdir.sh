#! /bin/bash

if [[ ! -d "$1" || ! -d "$2" || "$#" -ne 3 ]]
then
  echo usage: cpdirs.sh source_directory1 source_directory2 dest_directory
else
  mkdir "$3"
  cp "$1"/* "$3" 2>/dev/null
  cp -u "$2"/* "$3" 2>/dev/null
fi 
