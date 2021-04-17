#!/bin/sh

# generate status page
sh /srv/tinystatus.sh /config/checks.csv /config/incidents.txt > /web/index.tmp

# activate status page
mv /web/index.tmp /web/index.html