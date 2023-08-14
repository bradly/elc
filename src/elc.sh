#!/bin/zsh

# elc - Edit Last Command Output

# MIT License
# Copyright 2023 Bradly Feeley
# Permission is hereby granted...

# Usage: elc [OPTIONS]
# Options:
#   -h, --help     Display this help message and exit

# Define default values
DEFAULT_LAST_COMMAND_OUTPUT="$TMPDIR/last_command_output.txt"
DEFAULT_EDITOR_COMMAND="fpp -a"  # Default editor command
DEFAULT_COMMANDS=("find" "fd" "grep" "rg")  # Default commands to wrap

# Define user-configurable variables with default values
LAST_COMMAND_OUTPUT="${LAST_COMMAND_OUTPUT:-$DEFAULT_LAST_COMMAND_OUTPUT}"
EDITOR_COMMAND="${EDITOR_COMMAND:-$DEFAULT_EDITOR_COMMAND}"
COMMANDS_TO_WRAP=("${COMMANDS_TO_WRAP:-$DEFAULT_COMMANDS}")

# Wrap command to capture output and write to file
wrap_and_write() {
  if type "$1" > /dev/null 2>&1; then
    "$@" | tee "$LAST_COMMAND_OUTPUT"
  else
    echo "Command $1 not found." >&2
    return 127
  fi
}

# Capture and edit the last executed command's output
elc() {
  local output_file="${1:-$LAST_COMMAND_OUTPUT}"

  if [ -f "$output_file" ]; then
    cat "$output_file" | $EDITOR_COMMAND
  else
    echo "No recent output to edit." >&2
    exit 127
  fi
}

# Main execution
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Usage: elc [OPTIONS]"
  echo "Options:"
  echo "  -h, --help     Display this help message and exit"
else
  elc "$@"
fi
