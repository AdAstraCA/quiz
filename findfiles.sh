#!/bin/bash

echo "What is the minimum amount of bytes?"
read ANS
for file in * ; do
    findbyte=$(stat -c %s $file)
     if [ $findbyte -gt $ANS ] ; then
	echo "$file has $findbyte bytes"
     fi 	
done

exit 0
