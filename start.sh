#!/usr/bin/env bash
set -euo pipefail

./update.sh
docker-compose down
docker-compose up -d postgres
sleep 10
docker-compose up -d
