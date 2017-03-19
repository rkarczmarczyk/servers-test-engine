#!/bin/bash
set -o pipefail
trap 'echo "$BASH_SOURCE: ${FUNCNAME[0]:-line} $LINENO: ABORTED ON ERROR" 1>&2; exit 1' ERR

cp /data/page/* $1