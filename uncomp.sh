#! /bin/bash

if [[ $# -eq 0 ]]
then
  echo usage: uncomp.sh {filelist}+
else
  echo "$1" YEAH
  while [ $# -gt 0 ] ; do
  	case $1 in
  	  *.tar) tar -xf "$1" ;;
  	  *.tar.gz | *.gz | *.tgz) tar -xzf "$1" ;;
  	  *.tar.Z | *.Z) tar -xf "$1" ;;
  	  *.zip) unzip "$1" ;;
  	  *) echo uncomp.sh: "$1" has no compression extension. ;;
    esac
    shift
  done # while 
fi
