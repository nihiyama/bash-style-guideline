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
function _logger() {
  local error_level="$1"
  local message="$2"
  local lineno="$3"
  local logfile="$4"

  local dt
  dt="$(date --iso-8601=seconds)"

  echo -e "${dt}\t[${error_level}]\t${message}\t${lineno}" >>"${logfile}"
}

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
function logger_info() {
  local message="$1"
  local lineno="$2"
  local logfile="$3"
  _logger "info" "${message}" "${lineno}" "${logfile}"
}

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
function logger_warning() {
  local message="$1"
  local lineno="$2"
  local logfile="$3"
  _logger "warning" "${message}" "${lineno}" "${logfile}"
}

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
function logger_error() {
  local message="$1"
  local lineno="$2"
  local logfile="$3"
  _logger "error" "${message}" "${lineno}" "${logfile}"
}

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
function handle_error() {
  # get last status code
  local exit_code="$?"
  local lineno="$1"
  local logfile="$2"
  logger_error "An error occurred with exit status ${exit_code}." "${lineno}" "${logfile}"
  exit "$exit_code"
}
