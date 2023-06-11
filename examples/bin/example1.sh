#!/usr/bin/env bash

#######################################
# File:
#   utils.sh
# Description:
#   ユーティリティ関数や初期設定（set ...）を行うためのスクリプト。
#   他のスクリプトから呼び出して利用する。
# Globals:
#   なし
# Arguments:
#   なし
# Outputs:
#   なし
# Returns:
#   なし
#######################################

# set for fail fast and loud
set -Eeuo pipefail

# globals
PARENT_DIRNAME="$(dirname "$(dirname "$0")")"
BASE_FILENAME="$(basename "$0" .sh)"
LOGFILE="${PARENT_DIRNAME}/log/${BASE_FILENAME}.log"

# load utils
# shellcheck disable=SC1091
# shellcheck source=utils.sh
source "${DIRNAME}/utils.sh"

# trap error
trap 'handle_error ${LINENO} ${LOGFILE};' ERR

function hoge() {
  a=$(grep -iR "xxxxxx" ./examples/tests || true)
  if [[ "${a}" == "" ]]; then
    echo "hogehogehoge"
  fi
  echo "${a}"
}

hoge
