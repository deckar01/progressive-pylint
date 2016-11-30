#!/bin/bash

declare -a names=("errors" "warnings" "refactors" "conventions")
declare -a codes=("W,R,C" "E,R,C" "E,W,C" "E,R,W")

for (( i=0; i<${#names[@]}; i++ )); do
  echo "Looking for ${names[$i]}..."
  log=$(pylint --disable=${codes[i]} $@ 2>&1)

  # If there were issues, show them and stop.
  if [ $? -ne 0 ]; then
    echo "$log"
    exit $status
  fi
done

echo "Lint free!"
