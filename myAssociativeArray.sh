declare -A myAssociativeArray
myAssociativeArray[a]=123
myAssociativeArray[b]=456
myAssociativeArray+=([c]=789 [d]=012)

echo ${myAssociativeArray[*]}

#012 789 456 123

