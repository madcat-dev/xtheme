# GTK icon theme 'Tela' installer
#     Module from 'xtheme'
CACHE="$HOME/.icons"
TEMPLATE="$(dirname "$BASH_SOURCE")"
DESTINATION="${DESTINATION:-$CACHE}"
COLORS_VARIANT="${color2}"

mkdir -p "$DESTINATION"        2>/dev/null
rm   -rf "$DESTINATION/Tela" 2>/dev/null
tar -xzf "$TEMPLATE/Tela.tar.gz" -C "$DESTINATION/" || return 1

DESTINATION="$DESTINATION/Tela"
if [[ ! -e "$DESTINATION" ]]; then
	return 1
fi

if [[ "${XTHEME_PREFER_DARK_THEME:-1}" ]]; then
    # 35 / 65
	sed  -i "s/#565656/$(rgb_value "$COLORS_VARIANT" 65)/g" \
		"$DESTINATION"/{16,22,24}/actions/*.svg || return 1
    # 45 / 55
    sed  -i "s/#727272/$(rgb_value "$COLORS_VARIANT" 55)/g" \
		"$DESTINATION"/{16,22,24}/{places,devices}/*.svg || return 1
    # 30 / 70
	sed  -i "s/#555555/$(rgb_value "$COLORS_VARIANT" 70)/g" \
		"$DESTINATION"/symbolic/{actions,apps,categories,devices}/*.svg || return 1
	sed  -i "s/#555555/$(rgb_value "$COLORS_VARIANT" 70)/g" \
		"$DESTINATION"/symbolic/{emblems,emotes,mimetypes,places,status}/*.svg || return 1
else
    # 35 / 65
	sed  -i "s/#565656/$(rgb_value "$COLORS_VARIANT" 35)/g" \
		"$DESTINATION"/{16,22,24}/actions/*.svg || return 1
    # 45 / 55
	sed  -i "s/#727272/$(rgb_value "$COLORS_VARIANT" 45)/g" \
		"$DESTINATION"/{16,22,24}/{places,devices}/*.svg || return 1
    # 30 / 70
	sed  -i "s/#555555/$(rgb_value "$COLORS_VARIANT" 30)/g" \
		"$DESTINATION"/symbolic/{actions,apps,categories,devices}/*.svg || return 1
	sed  -i "s/#555555/$(rgb_value "$COLORS_VARIANT" 30)/g" \
		"$DESTINATION"/symbolic/{emblems,emotes,mimetypes,places,status}/*.svg || return 1
fi


sed  -i "s/#5294E2/$COLORS_VARIANT/gi" \
	"$DESTINATION"/scalable/places/default-*.svg || return 1

sed  -i "s/#66bcff/$(rgb_value "$COLORS_VARIANT" +10)/gi" \
	"$DESTINATION"/scalable/places/default-*.svg || return 1

sed  -i "s/#b29aff/$(rgb_value "$COLORS_VARIANT" +20)/gi" \
	"$DESTINATION"/scalable/places/default-*.svg || return 1

sed  -i "s/#5294E2/$COLORS_VARIANT/gi" \
    "$DESTINATION"/16/places/folder*.svg || return 1
