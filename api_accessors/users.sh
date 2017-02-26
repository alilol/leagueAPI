#!/bin/bash

Usage= "Usage ($0) [--help|--username]"

cd $(dirname $0)

echo $#

if [ $# -ne 2 ]
	then echo ${Usage}
	exit 1
fi

KEY=$1

case ${KEY} in 
	--help)
		echo Usage
	;;
	--username)
		username=$2
	;;
esac

curl --request GET "https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/${username}?api_key=b577cb58-0d41-4647-a2f8-956f83e7b70b" > ${username}.json