#!/usr/bin/env bash

#######################################
# File:
#   <filename>
# Description:
#   <description>
# Globals:
#   <global variables>
# Arguments:
#   <argument>
# Outputs:
#   <outputs>
# Returns:
#   <retuen code>: <description>
#######################################

# set for fail fast and loud
set -Eeuo pipefail

# global variables
VAR1="VAR1"
VAR2="$2"

DIRNAME="$(dirname "$0")"
FILENAME="$(basename "$0" .sh)"
LOGFILE="${DIRNAME}/${FILENAME}.log"

# load utils
# shellcheck disable=SC1091
# shellcheck source=utils.sh
source "${DIRNAME}/utils.sh"

# trap error
trap 'handle_error ${LINENO} ${LOGFILE};' ERR

#######################################
# Description:
#   <description>
# Globals:
#   <using global variables>
# Arguments:
#   <argument>
# Outputs:
#   <outputs>
# Returns:
#   <retuen code>: <description>
#######################################
function func1() {
  local var1="$1"
  local var2
  var2="var2"
  echo "${var1} ${var2}"
}

# main routine
func1 "var1"
echo "${VAR1}" "${VAR2}"
