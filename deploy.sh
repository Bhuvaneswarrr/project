#!/bin/bash
docker login -u bhuvaneswarrr -p dckr_pat_1BcOwgl4e06z167bGY0uDK7ECbY
if [[ "$GIT_BRANCH" == "master" ]]; then
./build.sh
docker tag caps bhuvaneswarrr/prod
docker push bhuvaneswarrr/prod
elif [[ "$GIT_BRANCH" == "dev" ]]; then
./build.sh
docker tag caps bhuvaneswarrr/dev
docker push bhuvaneswarrr/dev
else 
  echo "deployment failure have look"
fi
