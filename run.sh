#!/usr/bin/env bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

COUNT_FILE="${CWD}/count.txt"
INDEX=$(cat ${COUNT_FILE})
PEOPLE=('abby' 'miki' 'sabir' 'marah')
PEOPLE_COUNT=${#PEOPLE[@]}

echo "end ${PEOPLE[INDEX]}s turn"
say -v Carlos "${PEOPLE[INDEX]} [[slnc 500]] taim tu passit"

if [[ ${INDEX} -eq $(( ${PEOPLE_COUNT} - 1)) ]]; then
	INDEX=0
else
	INDEX=$(( $INDEX + 1 ))
fi

echo ${INDEX} > ${COUNT_FILE}
