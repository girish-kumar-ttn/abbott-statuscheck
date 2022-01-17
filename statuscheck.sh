#!/bin/bash
while read LINE; do   curl -o /dev/null --silent --get --write-out "%{http_code} $LINE\n" "$LINE"; done < all-urls.txt > all_url_list.txt


while read line; do
j=$(echo "$line" | awk '{print $1}')
if [[ "$j" != "200" ]]
then
echo "$line" > error_url_list.txt
fi
done < all_url_list.txt
