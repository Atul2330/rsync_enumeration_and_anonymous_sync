#!/bin/bash

mkdir -p synced_data logs

Log_File="logs/sync.log"

echo "================Anonymous Sync Started====================" | tee -a "$Log_File"

while read -r target
do
	[ -z "$target" ] && continue

	echo " "
	echo "[+] Checking $target" | tee -a "$Log_File"
	modules=$(rsync "rsync://$target/" 2>/dev/null | awk '{print $1}')
	[ -z "$modules" ] && continue

	for module in $modules
	do
		echo "[+] Syncing Module: $module from $target" | tee -a "$Log_File"

		mkdir -p "synced_data/$target/$module"

		rsync -av \
		"rsync://$target/$module" \
		"synced_data/$target/$module/" \
		|tee -a "$Log_File"
	done
done < targets.txt

echo " "

echo "=================== Sync Started ===================" | tee -a "$Log_File"

