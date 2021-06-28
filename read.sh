while getopts ":f:p:h:d" flag
do
    case "${flag}" in
     
	 h)
      echo "Help.... please use options below for read.sh"
	  echo "-f <file>"
	  echo "-h for help"
      exit 1
      ;;
	 f) 
	 	filePath=${OPTARG}
		;;
	 ds)
	 	echo "used ds flag"
		exit 1
		;;
	 \?)
      echo "Invalid option: -$OPTARG"
	  echo "Help.... please use options below for read.sh"
	  echo "-h for help"
      exit 1
      ;;
     :)
      echo "Option -$OPTARG requires an argument. Please use -h to find args" >&2
      exit 1
      ;;
    esac
done

echo "FilePath = $filePath";

#if -n = not null. -z = not null. 
if [[ -n $filePath ]];
then
	echo "$filePath"
	input=$filePath

	
	
	while read line
	do 

		list+=$line
		echo "$line"
		echo "$list"
	done < "$input"
else
	echo "no file given. please use select file when using -h"
fi
echo "for loop time"
for number in $list
	do
		echo $number
	done