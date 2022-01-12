#!/bin/bash
while read LINE; do   curl -o /dev/null --silent --get --write-out "%{http_code} $LINE\n" "$LINE"; done < all-urls.txt > all_url_list.txt

cat full-list.txt | grep "en" > error_url_list.txt
