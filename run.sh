#!/usr/bin/env bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

COUNT_FILE="${CWD}/count.txt"
INDEX=$(cat ${COUNT_FILE})
PEOPLE=('abby' 'miki' 'sabir' 'marah')
PEOPLE_COUNT=${#PEOPLE[@]}
CURRENT_PERSON=${PEOPLE[INDEX]}

echo "end ${CURRENT_PERSON}s turn"
say -v Carlos "${CURRENT_PERSON} [[slnc 500]] taim tu passit"

if [[ ${INDEX} -eq $(( ${PEOPLE_COUNT} - 1)) ]]; then
	INDEX=0
else
	INDEX=$(( $INDEX + 1 ))
fi

echo ${INDEX} > ${COUNT_FILE}
