#!/usr/bin/env bash
# Exercise 1 – Greet
# Goal: greet the person whose name is given as the first argume$
#   ./01_greet.sh Ada  -> Hello, Ada!
#   ./01_greet.sh      -> Hello, stranger!      (no argument)
# Hint: "${1:-default}" gives $1, or "default" if $1 is empty.


name="${1:-stranger}"
echo "Hello, ${name}!"
