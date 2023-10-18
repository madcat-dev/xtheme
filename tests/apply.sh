#!/usr/bin/env bash

LC_ALL=C
BASE="$(dirname "${BASH_SOURCE:-$0}")"

source "$BASE/../xtheme"

# TEST's ----------------------------------------------------------------------

refill_colors # inititalise palette

echo -e "Test: apply $BASE/../templates/colors.sh /tmp/colors.sh"
apply "$BASE/../templates/colors.sh" "/tmp/colors.sh" || exit 1
echo -e "\033[32m[+] applyed\033[0m"
echo

echo -e "Test: template colors.sh /tmp"
template colors.sh "/tmp" || exit 1
echo

echo -e "Test: template colors.sh /tmp"
template xrdb "/tmp" || exit 1
echo

echo -e "\033[32mTest complete!\033[0m"
