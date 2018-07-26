#!/usr/bin/env bash
set -euo pipefail

# Copy Debian's ll for easier listing of files in terminal

if [ "$#" -eq 1 ]; then
  ls -alFG "$1"
else
  ls -alFG
fi
