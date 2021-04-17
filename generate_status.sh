#!/bin/sh

# ensure config files exist
if [ ! -f touch /config/checks.csv ];then touch /config/checks.csv;fi
if [ ! -f touch /config/incidents.txt ];then touch /config/incidents.txt;fi

# generate status page
sh /srv/tinystatus.sh /config/checks.csv /config/incidents.txt > /web/index.tmp

# activate status page
mv /web/index.tmp /web/index.html