#! /bin/bash

if [[ $# -eq 0 ]]
then
  echo usage: uncomp {filelist}+
else
  while [ $# -gt 0 ] ; do
  	case $1 in
  	  *.tar) tar -xf "$1" ;;
  	  *.tar.gz | *.gz | *.tgz) tar -xzf "$1" ;;
  	  *.tar.Z | *.Z) tar -xf "$1" ;;
  	  *.zip) unzip "$1" ;;
  	  *) echo uncomp: "$1" has no compression extension. ;;
    esac
    shift
  done # while 
fi
