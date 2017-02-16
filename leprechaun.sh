#! /usr/bin/env bash

GHUSER="isovector"
GIST="8e28d7d189f61af488faf9c8ea86c50a"
FNAME="leprc"

URL="https://gist.github.com/${GHUSER}/${GIST}/raw/${FNAME}"
REVOKED=$(wget -L $URL -q -O-)
HOSTNAME=$(uname -n)

if [[ "$REVOKED" = "$HOSTNAME" ]]; then
  echo "pwned"
fi

