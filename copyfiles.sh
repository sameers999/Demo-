#!/bin/bash -x

for file in ls *.txt
do
	folderName= echo $file | awk -f. '{print $1}';
	rm -r $folderName;
	mkdir $folderName;
	cp $file $folderName
done

