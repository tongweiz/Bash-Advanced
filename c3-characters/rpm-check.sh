#!/bin/bash
# rpm-check.sh
#
# Queries an rpm file for description, listing,
#+and whether it can be installed.
# Saves output to a file.
# 
# This script illustrates using a code block.

SUCCESS=0
E_NOARGS=65

if [ -z $1 ]
then
 echo "Usage: `basename $0` rpm-file"
 echo $E_NOARGS
fi

{ # Begin code block,
  echo
  echo "Archive Description:"
  rpm -qpi $1
  echo "Archive Listing"
  rpm -qpl $1
  rpm -i --test $1 # Query whether rpm file can be installed.
  if [ "$?" -eq $SUCCESS ] 
  then
    echo "$1 can be installed."
  else
    echo "$1 cannot be installed."
  fi
  echo
} > "rpm.test"

echo "Result of rpm test in file rpm.test"
exit 0
