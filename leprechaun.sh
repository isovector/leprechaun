#! /usr/bin/env bash

REVOKED="doom"
HOSTNAME=$(uname -n)


echo $REVOKED | while read REVOCATION; do
  if [[ "$REVOKED" = "$HOSTNAME" ]]; then
    echo $HOSTNAME
  fi
done

