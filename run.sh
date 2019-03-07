#!/bin/bash
checkThese=(behavior_packs definitions permissions.json resource_packs server.properties structures whitelist.json)
for i in "${checkThese[@]}"
do
	if ! [ -e $i ]
	then
		cp -R "/bedrock/$i" .
	fi
done

LD_LIBRARY_PATH=/bedrock /bedrock/bedrock_server
