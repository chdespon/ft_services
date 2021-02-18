#!/bin/sh

mkdir -p grafana/data
mv grafana.db grafana/data

cd grafana/bin
./grafana-server