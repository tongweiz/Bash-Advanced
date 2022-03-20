#!/bin/bash
# Clean Up Version 3

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=86
E_NOTROOT=87

# Run as root
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Has to run with ROOT"
  exit $E_NOTROOT
fi

if [ -n "$1" ]
then 
  lines=$1
else
  lines=$LINES
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]    # or if [ "$PWD" != "$LOG_DIR" ]

then
  echo "Not the right DIR"
  echo $E_XCD
fi

tail -n $lines messages > mesg.temp
mv mesg.temp messages

cat /dev/null > wtmp
echo "Log files cleand up."

exit 0
