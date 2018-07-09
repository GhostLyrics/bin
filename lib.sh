#!/usr/bin/env bash
set -euo pipefail

# check if a command is available. Exit immediately if it is not
function check_dependency {
  command -v "$1" >/dev/null 2>&1 || { echo >&2 "$1 is not installed."; exit 1; }
}
