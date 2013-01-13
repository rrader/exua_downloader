#!/bin/bash

echo "Enter ex.ua article id:"
read num
URLS="$num.urls"
curl http://www.ex.ua/filelist/$num.urls > $URLS
for u in `cat ~/1.txt`; do
	wget --content-disposition $u
done