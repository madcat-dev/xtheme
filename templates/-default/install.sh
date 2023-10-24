#!/usr/bin/env bash
# Default installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")

echo -e "XTHEME_CACHE: \t$XTHEME_CACHE"
echo -e "XTHEME_CONFIG:\t$XTHEME_CONFIG"
echo -e "TEMPLATE:     \t$TEMPLATE"
echo -e "IS DARK:      \t$XTHEME_PREFER_DARK_THEME"

echo -e "background:\t$background"
echo -e "foreground:\t$foreground"
echo -e "cursor:    \t$cursor"

for i in {0..15}; do
    color="color${i}"
    echo -e "$color: \t${!color}"
done
