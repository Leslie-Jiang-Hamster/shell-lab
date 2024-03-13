#!/usr/bin/env bash

id="$1"

if [[ -z "$id" ]]; then
  echo "id required"
  exit 1
fi

make
diff <(make "test$id" | tail -n +2) <(make "rtest$id" | tail -n +2)