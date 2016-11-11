#!/usr/bin/env bash

set -o errexit -o nounset

SCRIPT_DIR=`dirname $0`

source ${SCRIPT_DIR}/publish-lib.sh

usage()
{
cat <<- EEOOFF

    This script will publish files to the gh-pages branch of your repo.

    $SCRIPT [option] folder

    Example: $SCRIPT

    OPTIONS:
    h       Display this message
    t       Perform a deploy from travis, using a travis encrypted key
    r       Repository name to publish to (deafult: origin)
    b       Source branch to publish from (default: master)

EEOOFF
}

SCRIPT=`basename $0`
ACTION="Manual"
REPO_NAME="origin"
SOURCE_BRANCH=`git rev-parse --abbrev-ref HEAD`

while getopts htr:b: OPT "$@"; do
  case $OPT in
    h) usage; exit 0;;
    t) ACTION="Travis";;
    r) REPO_NAME=$OPTARG;;
    b) SOURCE_BRANCH=$OPTARG;;
  esac
done

shift $((OPTIND-1))

SITE_FOLDER="${1:- }"

if [ -z $SITE_FOLDER ]; then
  echo -e "${RED}Error: Please specify a folder to publish.${NC}"
  usage
  exit -1
fi

echoHeader "${ACTION} deploy of ${REPO_NAME}/${SOURCE_BRANCH}:${SITE_FOLDER} to gh-pages"

case $ACTION in
  Manual)
    manualDeploy "$@"
  ;;
  Travis)
    travisDeploy
esac
