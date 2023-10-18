# GTK theme 'FlatColor' installer
#     Module from 'xtheme'
CACHE="$HOME/.themes"
TEMPLATE="$(dirname "$BASH_SOURCE")"
DESTINATION="${DESTINATION:-$CACHE}"

mkdir -p "$DESTINATION"				2>/dev/null
rm   -rf "$DESTINATION/FlatColor"	2>/dev/null

tar -xzf "$TEMPLATE/FlatColor.tar.gz" -C "$DESTINATION/" || return 1

apply "$DESTINATION/FlatColor/gtk-2.0/gtkrc.base" \
    "$DESTINATION/FlatColor/gtk-2.0/gtkrc" || return 1

apply "$DESTINATION/FlatColor/gtk-3.0/gtk.css.base" \
    "$DESTINATION/FlatColor/gtk-3.0/gtk.css" || return 1

apply "$DESTINATION/FlatColor/gtk-3.20/gtk.css.base" \
    "$DESTINATION/FlatColor/gtk-3.20/gtk.css" || return 1

if [ ! -e "$DESTINATION/XTheme" ]; then
    ln -s "$DESTINATION/FlatColor" "$DESTINATION/XTheme" || return 1
fi
