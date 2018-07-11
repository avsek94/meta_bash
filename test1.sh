#!/bin/bash

mkdir /home/avsek/meta_test1
cd /home/avsek/meta_test1

echo "Enter the number of folders and file you want to create :"
read folder
for ((i=1; i<=$folder; i++))
        do
        mkdir Newfolder$i
done
echo "$folder New folders has been created....!!!"

cd /home/avsek/meta_test1

echo "Enter the number of files you want to create :"
read nfile
for ((k=1; k<=$folder; k++))
do    
	
for ((f=1; f<=$nfile; f++))
	do	
	cd Newfolder$k
	touch newfile$f
 cd /home/avsek/meta_test1
done
done

echo "$nfile New files has been Created...!!!"

echo "Enter the full path of file location to compare for duplicates..!!!"
read path

cd $path

ls -la

echo "Enter file1 you want to compare...!!!"
read file1

echo "Enter file2 you want to compare...!!!"
read file2

var1 = md5sum $file1
var2 = md5sum $file2

echo var1


