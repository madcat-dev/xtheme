# X variables installer
#     Module from 'xtheme'
CACHE=${XTHEME_CACHE:-$HOME/.xtheme}
TEMPLATE="$(dirname "$BASH_SOURCE")"
DESTINATION="${DESTINATION:-$CACHE}"

mkdir -p "$DESTINATION" 2>/dev/null

apply "$TEMPLATE/colors.Xresources" \
    "$DESTINATION/colors.Xresources" || return 1

xrdb -merge "$DESTINATION/colors.Xresources"
