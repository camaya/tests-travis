#!/bin/bash

docker pull zricethezav/gitleaks
docker container run --rm --name=gitleaks -e GITHUB_TOKEN=$GITHUB_API_KEY \
    -v $PWD/gitleaks.toml:/tmp/gitleaks.toml \
    zricethezav/gitleaks --github-pr=https://github.com/$TRAVIS_REPO_SLUG/pull/$TRAVIS_PULL_REQUEST \
                         --config=/tmp/gitleaks.toml --verbose

