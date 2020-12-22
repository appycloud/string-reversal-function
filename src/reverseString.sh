#!/usr/bin/env bash

# the input file
IF=$1
# the output file
OF=$2

# check the argument count, require 2 args
if [ "$#" -ne 2 ]; then # we didn't get 2 args
    echo wrong input argument count
    echo usage :
    echo reverseString.sh inputFile outputFile
    exit -1
fi

# reverse the strings, taken from here https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script
var=`head -c 512 $IF`
copy=${var}

len=${#copy}
for((i=$len-1;i>=0;i--)); do rev="$rev${copy:$i:1}"; done

# print results
echo $var
echo $rev
# write to the output file
echo $rev > $OF
