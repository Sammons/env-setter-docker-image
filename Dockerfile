FROM alpine:3.4
CMD for i in $(echo $vars | tr ',' "\n"); do env | grep -E ^`echo $i | sed 's/=.*$//'`= | sed s/^`echo $i | sed 's/=.*$//'`=// | sed 's/\\n/\'$'\n''/g'> `echo $i | sed 's/^.*=//'`; done;