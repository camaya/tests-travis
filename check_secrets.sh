#!/bin/bash

docker pull zricethezav/gitleaks
docker container run --rm --name=gitleaks -e GITHUB_TOKEN=$GITHUB_API_KEY zricethezav/gitleaks --github-pr=https://github.com/$TRAVIS_REPO_SLUG/pull/$TRAVIS_PULL_REQUEST
