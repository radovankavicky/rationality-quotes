#!/bin/bash

cat urls | grep $1 | while read url ; do f=`echo $url | cut -f4 -d'/'` ; wget -O - $url > $f ; done
cat urls | grep $1 | python parse.py pretty > rq.html
