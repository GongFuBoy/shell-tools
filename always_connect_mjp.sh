#!/bin/bash
#
# 通过SSH通道建立1080连接通道
#
while true; do
	echo "`date`: connect mjp."
	ssh -o ServerAliveInterval=60 -TN -D 127.0.0.1:1080 root@${1}
	echo "`date`: wait for 15 seconds, ssh will reconnect."
	sleep 15
done

