#!/bin/bash
NOW=`date +%d-%m-%y-%H%M`
touch ${NOW}-testlog.txt
# for a range of cache threshold values
for x in 52
do
  # repeat each experiment several times
  for rep in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
  do
    echo -n "Threshold: " $x " " >> ${NOW}-testlog.txt
    echo -n "Rep: " $rep " " >> ${NOW}-testlog.txt
    ./spectre-ACA.out -q $x | egrep 'Time|PercentCorrect' >> ${NOW}-testlog.txt
  done
  echo -n "==============================================================================" >> ${NOW}-testlog.txt
  echo -e >> ${NOW}-testlog.txt
done
# adding CPU Info at the end
cat /proc/cpuinfo | /bin/egrep 'processor|model name|cache
size|core|sibling|physical' >> ${NOW}-testlog.txt