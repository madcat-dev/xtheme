#!/usr/bin/env bash
# GTK icon theme 'Tela' installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")
XTHEME_CACHE="$HOME/.icons"
COLORS_VARIANT="${color2}"

rm   -rf "$XTHEME_CACHE/Tela"
mkdir -p "$XTHEME_CACHE"
tar -xzf "$TEMPLATE/Tela.tar.gz" -C "$XTHEME_CACHE/" || exit 1

XTHEME_CACHE="$XTHEME_CACHE/Tela"

if [[ ${XTHEME_PREFER_DARK_THEME} ]]; then
    # 35 / 65
	sed  -i "s/#565656/$(rgb value "$COLORS_VARIANT" 65)/g" \
		"$XTHEME_CACHE"/{16,22,24}/actions/*.svg || exit 1
    # 45 / 55
    sed  -i "s/#727272/$(rgb value "$COLORS_VARIANT" 55)/g" \
		"$XTHEME_CACHE"/{16,22,24}/{places,devices}/*.svg || exit 1
    # 30 / 70
	sed  -i "s/#555555/$(rgb value "$COLORS_VARIANT" 70)/g" \
		"$XTHEME_CACHE"/symbolic/{actions,apps,categories,devices}/*.svg || exit 1
	sed  -i "s/#555555/$(rgb value "$COLORS_VARIANT" 70)/g" \
		"$XTHEME_CACHE"/symbolic/{emblems,emotes,mimetypes,places,status}/*.svg || exit 1
else
    # 35 / 65
	sed  -i "s/#565656/$(rgb value "$COLORS_VARIANT" 35)/g" \
		"$XTHEME_CACHE"/{16,22,24}/actions/*.svg || exit 1
    # 45 / 55
	sed  -i "s/#727272/$(rgb value "$COLORS_VARIANT" 45)/g" \
		"$XTHEME_CACHE"/{16,22,24}/{places,devices}/*.svg || exit 1
    # 30 / 70
	sed  -i "s/#555555/$(rgb value "$COLORS_VARIANT" 30)/g" \
		"$XTHEME_CACHE"/symbolic/{actions,apps,categories,devices}/*.svg || exit 1
	sed  -i "s/#555555/$(rgb value "$COLORS_VARIANT" 30)/g" \
		"$XTHEME_CACHE"/symbolic/{emblems,emotes,mimetypes,places,status}/*.svg || exit 1
fi


sed  -i "s/#5294E2/$COLORS_VARIANT/gi" \
	"$XTHEME_CACHE"/scalable/places/default-*.svg || exit 1

sed  -i "s/#66bcff/$(rgb value "$COLORS_VARIANT" +10)/gi" \
	"$XTHEME_CACHE"/scalable/places/default-*.svg || exit 1

sed  -i "s/#b29aff/$(rgb value "$COLORS_VARIANT" +20)/gi" \
	"$XTHEME_CACHE"/scalable/places/default-*.svg || exit 1

sed  -i "s/#5294E2/$COLORS_VARIANT/gi" \
    "$XTHEME_CACHE"/16/places/folder*.svg || exit 1
