#!/bin/bash
NOW=`date +%d-%m-%y-%H%M`
echo $NOW
# for a range of cache threshold values
  # repeat each experiment several times
  for rep in {1..20}
  do
    echo -n -e "Threshold: 40\t" 
    ~/Repos/final_year_at_ic/ACA_cw2/SpectrePoC/spectre-ACA.out -q 120 | egrep 'Time|PercentCorrect'
  done
  echo "=============================================================================="
