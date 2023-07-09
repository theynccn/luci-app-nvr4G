#!/bin/sh
# Copyright 2020-2023 Rafał Wabik (IceG) - From eko.one.pl forum
# MIT License

chmod +x /usr/share/Nvr4G-lite/Nvr4G.sh 2>&1 &
chmod +x /usr/share/Nvr4G-lite/detect.sh 2>&1 &
chmod +x /usr/share/Nvr4G-lite/hilink/alcatel_hilink.sh 2>&1 &
chmod +x /usr/share/Nvr4G-lite/hilink/huawei_hilink.sh 2>&1 &
chmod +x /usr/share/Nvr4G-lite/hilink/zte.sh 2>&1 &
rm -rf /tmp/luci-indexcache 2>&1 &
rm -rf /tmp/luci-modulecache/ 2>&1 &

DEVICE=$(cat /tmp/sysinfo/board_name)

if [[ "$DEVICE" == *"mf289f"* ]]; then
	
		uci set Nvr4G.@Nvr4G[0].device="/dev/ttyUSB1" 2>&1 &
		uci commit Nvr4G 2>&1 &

fi
	
if [[ "$DEVICE" == *"mf286r"* ]]; then
	
		uci set Nvr4G.@Nvr4G[0].device="/dev/ttyACM0" 2>&1 &
		uci commit Nvr4G 2>&1 &

fi

if [[ "$DEVICE" == *"mf286d"* ]]; then
	
		uci set Nvr4G.@Nvr4G[0].device="/dev/ttyUSB1" 2>&1 &
		uci commit Nvr4G 2>&1 &

fi

if [[ "$DEVICE" == *"mf286"* ]]; then
	
		uci set Nvr4G.@Nvr4G[0].device="/dev/ttyUSB1" 2>&1 &
		uci commit Nvr4G 2>&1 &

fi
