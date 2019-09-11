#!/bin/sh
cat /config 
kumactl  --config-file /config  apply -f  /opt/service.yaml
echo "run dp"
nohup kuma-tcp-echo & 
kuma-dp run  --log-level=debug