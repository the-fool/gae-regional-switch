#!/bin/bash

set -e

if [[ $# -ne 3 ]]; then
  echo "Usage: switch.sh DOMAIN_NAME OLD_PROJECT NEW_PROJECT"
  exit 1
fi

DOMAIN_NAME=$1
OLD_PROJECT=$2
NEW_PROJECT=$3

echo "Changing DNS records to route traffic from $OLD_PROJECT to $NEW_PROJECT"

gcloud app domain-mappings delete $DOMAIN_NAME --project $OLD_PROJECT --quiet
gcloud app domain-mappings create $DOMAIN_NAME --project $NEW_PROJECT --quiet

echo "Done"

