#!/usr/bin/env bash
set -euo pipefail

# Shellcheck overrides are in place if I'm not willing to change code sourced from others

# check if a command is available. Exit immediately if it is not
function check_dependency {
  command -v "$1" >/dev/null 2>&1 || { echo >&2 "$1 is not installed."; exit 1; }
}

# prompt for user input with a Yes/No question, optionally giving a default answer
# source: @davejamesmiller, https://gist.github.com/davejamesmiller/1965569
function ask() {
    local prompt default reply

    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        # shellcheck disable=SC2162
        read reply </dev/tty

        # Default?
        if [ -z "$reply" ]; then
            reply=$default
        fi

        # Check if the reply is valid
        case "$reply" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac

    done
}
