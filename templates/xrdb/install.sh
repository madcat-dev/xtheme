#!/usr/bin/env bash
# Default installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")

apply "$TEMPLATE/colors.Xresources" \
    "$XTHEME_CACHE/colors.Xresources" || exit 1

# Post-install
xrdb -merge "$XTHEME_CACHE/colors.Xresources" || exit 1
