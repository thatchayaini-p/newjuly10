#!/bin/bash
echo "Checking for deprecated Kubernetes APIs..."

DEPRECATED_APIS=("extensions/v1beta1" "apps/v1beta1" "apps/v1beta2" "networking.k8s.io/v1beta1" "batch/v1beta1")

FOUND=false

for file in $(find . -name '*.yaml'); do
  for api in "${DEPRECATED_APIS[@]}"; do
    if grep -q "$api" "$file"; then
      echo "[DEPRECATED] $api found in $file"
      FOUND=true
    fi
  done
done

if $FOUND; then
  echo "❌ Deprecated APIs found."
  exit 1
else
  echo "✅ No deprecated APIs found."
fi
