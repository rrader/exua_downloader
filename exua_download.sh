#!/bin/bash

if [ "z$1" = "z" ]; then
	echo "Enter ex.ua article id:"
	read num
else
	num=$1
fi

echo $num

URLS="$num.urls"
curl http://www.ex.ua/filelist/$num.urls > $URLS
for u in `cat $URLS`; do
	wget -nc --content-disposition -c $u
done
