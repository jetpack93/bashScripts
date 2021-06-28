#! /bin/bash

while getopts ":f:p:" flag
do
  case "${flag}" in
    #Setting flags users can select     
    f) filePath=${OPTARG};;
    p)	port=${OPTARG};;
    #if invalid character
    \?) echo "Invalid option: -$OPTARG"  exit 1;;
    #if empty/ not arguement given
    :) echo "Option -$OPTARG requires an argument. Please use -h to find args" >&2 exit 1;;
  esac
done

echo "FilePath = $filePath";
echo "port = $port"
#if -n = not null. -z = not null. 
if [[ -n $filePath ]];
then
	input=$filePath
	
	while read line || [[ -n $line ]]
	do 
        arr[$i]=$line:$port

        ((i++))
        echo "{$arr[$i]}"
	done < "$input"
else
	echo "no file given. please use select file when using -h"
fi
echo "for loop time"

#for each index in array set from reading file above. 
for i in "${arr[@]}"
do
   echo "curl -iv $i"
   # or do whatever with individual element of the array
done