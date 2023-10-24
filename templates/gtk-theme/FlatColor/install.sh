#!/usr/bin/env bash
# GTK theme 'FlatColor' installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")
XTHEME_CACHE="$HOME/.themes"

rm   -rf "$XTHEME_CACHE/FlatColor" 2>/dev/null
mkdir -p "$XTHEME_CACHE" 2>/dev/null
tar -xzf "$TEMPLATE/FlatColor.tar.gz" -C "$XTHEME_CACHE/" || exit 1

apply "$XTHEME_CACHE/FlatColor/gtk-2.0/gtkrc.base" \
    "$XTHEME_CACHE/FlatColor/gtk-2.0/gtkrc" || exit 1

apply "$XTHEME_CACHE/FlatColor/gtk-3.0/gtk.css.base" \
    "$XTHEME_CACHE/FlatColor/gtk-3.0/gtk.css" || exit 1

apply "$XTHEME_CACHE/FlatColor/gtk-3.20/gtk.css.base" \
    "$XTHEME_CACHE/FlatColor/gtk-3.20/gtk.css" || exit 1
