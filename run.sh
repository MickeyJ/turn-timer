#!/usr/bin/env bash

INDEX=$(cat ./count.txt)
echo "post ${INDEX}"

PEOPLE=('abby' 'miki' 'sabir', 'marah')

say -v Carlos "${PEOPLE[INDEX]} [[slnc 500]] taim tu passit"

if [[ ${INDEX} -eq $(( ${#PEOPLE[@]} - 1)) ]]; then
	INDEX=0
else
	INDEX=$(( $INDEX + 1 ))
fi

echo ${INDEX} > ./count.txt
