#!/usr/bin/env bash
# Exercise 2 – Even or odd
# Goal:
#   ./02_even_odd.sh 4    -> 4 is even
#   ./02_even_odd.sh 7    -> 7 is odd
#   ./02_even_odd.sh      -> "Usage: ..." on stderr, exit code 1
#   ./02_even_odd.sh abc  -> "Error: ..." on stderr, exit code 2
# Hints: [[ $n =~ ^-?[0-9]+$ ]] checks for a whole number.
#        (( n % 2 == 0 )) is true when n is even.
set -euo pipefail

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <number>" >&2
  exit 1
fi

n="$1"

if ! [[ $n =~ ^-?[0-9]+$ ]]; then
  echo "Error: '$n' is not a whole number" >&2
  exit 2
fi

if (( n % 2 == 0 )); then
  echo "$n is even"
else
  echo "$n is odd"
fi
