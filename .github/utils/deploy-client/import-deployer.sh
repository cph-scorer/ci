#!/bin/bash

npm install -g import-map-deployer

curl -s https://raw.githubusercontent.com/cph-scorer/ci/main/.github/utils/deploy-client/config.json -o config.json
envsubst < config.json | tee config.json > /dev/null

import-map-deployer config.json &

sleep 5
