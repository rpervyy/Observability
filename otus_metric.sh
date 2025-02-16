#!/bin/bash

cat /dev/null > /tmp/zdata.txt
for item in "metric1" "metric2" "metric3"; do
 randNum="$(( $RANDOM % 100 + 0 ))"
 echo "\"Zabbix server\" otus_important_metrics[$item] $randNum" >> /tmp/zdata.txt
done

# push all these trapper values back to zabbix
zabbix_sender -z 127.0.0.1 -s "Zabbix server" -i /tmp/zdata.txt >> /tmp/zsender.log 2>&1
