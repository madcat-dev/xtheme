# Kvantum variables installer
#     Module from 'xtheme'
CACHE="$HOME/.config/Kvantum/XTheme"
TEMPLATE="$(dirname "$BASH_SOURCE")"
DESTINATION="${DESTINATION:-$CACHE}"

mkdir -p "$DESTINATION" > /dev/null 2>&1

cp "$TEMPLATE/XTheme.svg" "$DESTINATION" || return 1

# background
sed  -i "s/#1b2224/${background}/gi" \
	"$DESTINATION/XTheme.svg" || return 1

# base color / black
sed  -i "s/#222b2e/$(rgb_value ${background} +4)/gi" \
	"$DESTINATION/XTheme.svg" || return 1

# button color 
sed  -i "s/#263034/$(rgb_value ${background} +6)/gi" \
	"$DESTINATION/XTheme.svg" || return 1

# button color 2
sed  -i "s/#39494f/$(rgb_value ${background} +17)/gi" \
	"$DESTINATION/XTheme.svg" || return 1

# selected color / green
sed  -i "s/#2eb398/${color2}/gi" \
	"$DESTINATION/XTheme.svg" || return 1

# selected color / green
if [[ ! "${XTHEME_PREFER_DARK_THEME}" ]]; then
    sed  -i "s/#dfdfdf/$(rgb_value '#dfdfdf' -50)/gi" \
        "$DESTINATION/XTheme.svg" || return 1

    sed  -i "s/#f5f5f5/$(rgb_value '#f5f5f5' -20)/gi" \
        "$DESTINATION/XTheme.svg" || return 1
fi

apply "$TEMPLATE/XTheme.kvconfig" "$DESTINATION/XTheme.kvconfig" || return 1
