#!/bin/bash

# Check if an argument was provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <sleep|wake>"
  exit 1
fi

ARG=$1
DATE=$(date)
TIMESTAMP=$(date +%s)
LOG=$HOME'/work-logger/log/WFH-journal.csv'
if [ "$ARG" == "sleep" ]; then
  echo "Sleep, $DATE, $TIMESTAMP" >> $LOG
elif [ "$ARG" == "wake" ]; then
  echo "Wake, $DATE, $TIMESTAMP" >> $LOG
else
  echo "Invalid argument: $ARG. Use 'sleep' or 'wake'."
  exit 1
fi

