#!/usr/bin/env bash
# Kvantum variables installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")
XTHEME_CACHE="$XTHEME_CACHE/config/Kvantum/XTheme"

mkdir -p "$XTHEME_CACHE" > /dev/null 2>&1

cp "$TEMPLATE/XTheme.svg" "$XTHEME_CACHE" || exit 1

# background
sed  -i "s/#1b2224/${background}/gi" \
	"$XTHEME_CACHE/XTheme.svg" || exit 1

# base color / black
sed  -i "s/#222b2e/$(rgb value ${background} +4)/gi" \
	"$XTHEME_CACHE/XTheme.svg" || exit 1

# button color 
sed  -i "s/#263034/$(rgb value ${background} +6)/gi" \
	"$XTHEME_CACHE/XTheme.svg" || exit 1

# button color 2
sed  -i "s/#39494f/$(rgb value ${background} +17)/gi" \
	"$XTHEME_CACHE/XTheme.svg" || exit 1

# selected color / green
sed  -i "s/#2eb398/${color2}/gi" \
	"$XTHEME_CACHE/XTheme.svg" || exit 1

# selected color / green
if [[ ! "${XTHEME_PREFER_DARK_THEME}" ]]; then
    sed  -i "s/#dfdfdf/$(rgb value '#dfdfdf' -50)/gi" \
        "$XTHEME_CACHE/XTheme.svg" || exit 1

    sed  -i "s/#f5f5f5/$(rgb value '#f5f5f5' -20)/gi" \
        "$XTHEME_CACHE/XTheme.svg" || exit 1
fi

apply "$TEMPLATE/XTheme.kvconfig" \
    "$XTHEME_CACHE/XTheme.kvconfig" || exit 1
