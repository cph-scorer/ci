#!/bin/bash

export service=${GITHUB_REPOSITORY#*/}
export url=$(echo https://${BUCKET}.s3.eu-west-3.amazonaws.com/)
export file=$(echo ${DIRECTORY}/${ARTIFACT})

envsubst <<<$(curl https://raw.githubusercontent.com/cph-scorer/ci/main/.github/utils/deploy-client/payload.json) > payload.json

curl --data @payload.json -X PATCH localhost:5000/services