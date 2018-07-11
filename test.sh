#!/bin/bash

mkdir /home/avsek/meta_test
#touch /home/avsek/index_tree
cd /home/avsek/meta_test

echo "enter the number of folders you want to create:"
read nfol
for ((i=1; i<=$nfol; i++))
	do
	mkdir test$i
echo "Folder create are :test$i"
done

echo "number of files to be created :"
read nfile
cd /home/avsek/meta_test
for ((k=1; k<=$nfile; k++))
do 
 cd test$i
 touch test$k
 cd /home/avsek/meta_test
done

#tree >>/home/avsek/index_tree

#yum install -y wget
#wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 
#rpm -ivh epel-release-latest-7.noarch.rpm

#yum install -y fdupes

#fdupes -r /home/avsek/meta_test >> /home/avsek/index_duplicates


