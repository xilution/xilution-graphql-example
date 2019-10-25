#!/usr/bin/env sh

set -e

if [ $# -lt 3 ]; then
  echo "Usage: yarn xln:delete-fox-instance {environment} {organization_id} {instance_id}"
  exit 1
fi

environment=${1}
organization_id=${2}
instance_id=${3}

xln-cli api integration fox delete_instance \
  --organization_id "${organization_id}" \
  --instance_id "${instance_id}" \
  -p "${environment}"
