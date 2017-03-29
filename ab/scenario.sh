#!/bin/bash
#set -o pipefail
#trap 'echo "$BASH_SOURCE: ${FUNCNAME[0]:-line} $LINENO: ABORTED ON ERROR" 1>&2; exit 1' ERR

RESULT_DIR="/results/ab/$(date +%Y_%m_%d-%H_%M_%S)_threads_${NUMBER_OF_USERS}_requests_${REQUESTS_COUNT}"
echo "Create dir $RESULT_DIR"
mkdir -p $RESULT_DIR

TEST_FILE=$(ls /data/page | sort -n | head -1)

IFS=","
while read f1 f2 f3 f4
do
        echo -e "\nStart test of server: $f2"
        ab -n $REQUESTS_COUNT -c $NUMBER_OF_USERS $f1://$f2:$f3/$TEST_FILE > ${RESULT_DIR}/${f2}.txt 2>&1
        echo "End test of server: $f2"

done < /data/scripts/test_apps.csv