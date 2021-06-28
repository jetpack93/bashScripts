#https://www.shell-tips.com/bash/select-loop/

#!/usr/bin/bash
# script: select-loop.sh
readarray -t opts
select item in "${opts[@]}";
do
  echo "You selected $item ($REPLY)"
  break;
done < /dev/tty

# Executing the script with a pipe and using the echo command
[me@linux ~]$ echo -e "option1\noption2" | ./select-loop.sh
1) option1
2) option2
#? 1
You selected option1 (1)

# Executing the script with a pipe and using the printf command
[me@linux ~]$ printf "%s\n" "option 1" "option 2" | ./select-loop.sh
1) option1
2) option2
#? 1
You selected option1 (1)