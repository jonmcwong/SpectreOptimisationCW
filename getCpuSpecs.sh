#!/bin/bash

# adding CPU Info at the end
cat /proc/cpuinfo | /bin/egrep 'processor|model name|cache
size|core|sibling|physical'
