#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ${DIR}/.env

if ! which python; then
  apt-get update
  apt-get install -y python-minimal
fi

if ! which pip; then
  apt-get install -y python-pip
fi

if ! pip list | grep locustio; then
 pip install locustio
fi
