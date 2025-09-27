#!/bin/bash

URI="http://localhost:8404"

scrape_uri="$(snapctl get scrape-uri)"
if [ -n "$scrape_uri" ]; then
  echo "scrape_uri is set to $scrape_uri"
  URI="$scrape_uri"
fi

echo "running $SNAP/bin/haproxy_exporter --haproxy.scrape-uri ${URI}?stats;csv"
"$SNAP/bin/haproxy_exporter" --haproxy.scrape-uri "${URI}?stats;csv"
