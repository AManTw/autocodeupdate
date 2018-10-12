#! /bin/bash

set -e

folder=`ls ~/$1`

for c in $folder
do
	#echo $c
	cd  ~/$1/$c
	#pwd
	git pull
	[ "$?" = "0" ]&&
	cd ..
done
