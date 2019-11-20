#!/bin/bash
# NOW=`date +%d-%m-%y-%H%M`
# echo $NOW
# for a range of cache threshold values
for x in {1..50}
do
  # repeat each experiment several times
  for rep in 1 2 3 4 5
  do
    echo -n -e "Threshold: " $x "\tRep: " $rep "\t"
    ../spectre-ACA.out -q $x | egrep 'Time|PercentCorrect'
  done
  echo "=============================================================================="
done
