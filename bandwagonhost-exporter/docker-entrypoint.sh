#!/bin/sh

if [ "$1" = 'run' ]; then
  MERTRICS_ADDRESS="${MERTRICS_ADDRESS:-:9103}"

  /usr/local/bin/bandwagonhost_cloud_exporter \
    --config.file /etc/bandwagonhost_cloud_exporter/config.yaml \
    --exporter.address "$MERTRICS_ADDRESS"

  exec "$@"
fi

exec "$@"



