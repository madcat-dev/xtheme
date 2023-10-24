#!/usr/bin/env bash
# Telegram variables installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")

mkdir -p "$XTHEME_CACHE" 2>/dev/null

apply "$TEMPLATE/colors.tdesktop-palette" \
    "$XTHEME_CACHE/colors.tdesktop-palette" || return 1

cat "$TEMPLATE/colors.tpg-constants" \
    >> "$XTHEME_CACHE/colors.tdesktop-palette" || return 1
