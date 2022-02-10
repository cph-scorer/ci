#!/bin/bash

npm install -g import-map-deployer

envsubst <<<$(curl https://raw.githubusercontent.com/cph-scorer/ci/main/.github/utils/deploy-client/config.json) > config.json

import-map-deployer config.json &

sleep 5