#!/bin/bash

mkdir -p logs

Log_File="logs/enumeration.log"

echo "=================RSync Enumeration Started===================" | tee -a "$Log_File"

while read -r target
do
	[ -z "$target" ] && continue

	echo " "
	echo "[+] Checking Target: $target" | tee -a "$Log_File"
	nc -z -w2 "$target" 873 >/dev/null 2>&1

	if [ $? -eq 0 ]
	then
		echo "[+] Port 873 Open on $target" | tee -a "$Log_File"
		echo "[+] Enumerating Available Modules..." | tee -a "$Log_File"
		rsync "rsync://$target/" 2>/dev/null | tee -a "$Log_File"
	else
		echo "[-] Port 873 Closed on $target" | tee -a "$Log_File"
	fi

done < targets.txt

echo " "
echo "=================== Enumeration Completed  ====================" | tee -a "$Log_File"
