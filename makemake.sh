#! /bin/bash

if [[ "$#" -eq 0 ]]
then
  echo Executable name required.
  echo usage: makemake.sh executable_name
else 
  echo -n "$1 :">Makefile
fi

for f in *.sh ; do
  f2=${f%.*}.o
  echo -n " $f2">>Makefile
done # for
echo>>makefile


# Helpful Hints
# Echo Tabs: echo -e ' \t' 
#   -e: enable interpret of backslash
#   ' \t': tab 
