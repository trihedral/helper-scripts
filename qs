#!/bin/bash
## Helper funtion for qstat ##
#   qs         -->  qstat -u $USER
#   qs -h      -->  [prints head of this script]
#   qs -r      -->  [prints jobs running on shared machine]
#   qs [args]  -->  qstat [args]

if [[ $1 == "-h" ]]; then
  head -n 6 $0
elif [[ $1 == "-r" ]]; then
  qstat -q *@@richter -s r
elif [[ $# > 1 ]]; then
  qstat $@
else
  qstat -u $USER
fi
