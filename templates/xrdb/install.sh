# -----------------------------------------------------------------------------
# colors.Xresources
# -----------------------------------------------------------------------------

TEMPLATE="$(dirname "$BASH_SOURCE")"
DESTINATION="${DESTINATION:-$HOME/.cache}"

apply "$TEMPLATE/colors.Xresources" \
    "$DESTINATION/colors.Xresources" || return 1

#xrdb -merge "$DESTINATION/colors.Xresources"
