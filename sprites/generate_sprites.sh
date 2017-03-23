#!/usr/bin/env bash
#Generate sprites with https://github.com/mapbox/spritezero-cli

#cat sources.txt | while read line; do
#  case "$line" in \#*) continue ;; esac
#    arr=($line)
#    echo "${arr[0]} => ${arr[1]}.svg"
#    curl -X GET ${arr[0]} --compressed > ./logos/${arr[1]}.svg
#done

../node_modules/@mapbox/spritezero-cli/bin/spritezero logos logos/
