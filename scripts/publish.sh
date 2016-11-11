#!/usr/bin/env bash

set -o errexit -o nounset

SCRIPT_DIR=`dirname $0`

source ${SCRIPT_DIR}/publish-lib.sh

SCRIPT=`basename $0`
ACTION="Manual"
REPO_NAME="origin"
SOURCE_BRANCH=`git rev-parse --abbrev-ref HEAD`

parseOpts "$@"

checkSiteFolderExists

echoHeader "${ACTION} deploy of ${REPO_NAME}/${SOURCE_BRANCH}:${SITE_FOLDER} to gh-pages"

case $ACTION in
  Manual)
    manualDeploy "$@"
  ;;
  Travis)
    travisDeploy
esac
