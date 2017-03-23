#!/usr/bin/env bash
. export_keys.sh
cat layers.txt | while read LAYER; do
  case "$LAYER" in \#*) continue ;; esac
    echo $LAYER
    curl -X GET "https://api.tmb.cat/v1/maps/wfs?app_key=${APP_KEY}&app_id=${APP_ID}&service=WFS&version=1.1.0&request=GetFeature&typename=TMB:${LAYER}&outputFormat=application/json&srsname=EPSG:4326" -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.100 Safari/537.36' --compressed | python -m json.tool > ${LAYER}.geojson
done
