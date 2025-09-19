#!/bin/bash

# Renovate Docker runner script
# Runs Renovate in a container against GitHub repositories

docker run --rm -it \
  -e RENOVATE_TOKEN="${RENOVATE_TOKEN}" \
  -e RENOVATE_AUTODISCOVER_FILTER="wurstbrot/renovate-test" \
  -e LOG_LEVEL=debug \
  -v "$(pwd):/usr/src/app" \
  -w /usr/src/app \
  renovate/renovate:latest \
  --platform=github \
  --autodiscover=true \
  --dry-run=false