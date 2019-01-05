#!/bin/bash

for dir in `ls --file-type -1`;

do

        if [ `echo $dir | grep "/$"` ]; then

                dir=`basename $dir`;

                tar -zvcf $dir\.tar.gz $dir;

        fi

done

