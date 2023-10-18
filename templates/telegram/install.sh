# Telegram variables installer
#     Module from 'xtheme'
CACHE=${XTHEME_CACHE:-$HOME/.xtheme}
TEMPLATE="$(dirname "$BASH_SOURCE")"
DESTINATION="${DESTINATION:-$CACHE}"

mkdir -p "$DESTINATION" 2>/dev/null

apply "$TEMPLATE/colors.tdesktop-palette" \
    "$DESTINATION/colors.tdesktop-palette" || return 1

cat "$TEMPLATE/colors.tpg-constants" \
    >> "$DESTINATION/colors.tdesktop-palette" || return 1
