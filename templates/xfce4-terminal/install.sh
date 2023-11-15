#!/usr/bin/env bash
# Xfce4-terminal installer
#     Module from 'xtheme'
source xtheme || exit 1 # import xtheme as library
TEMPLATE=$(dirname "${BASH_SOURCE:-$0}")
TERMINAL_THEME="$HOME/.local/share/xfce4/terminal/colorschemes"
TERMINAL_RC="$HOME/.config/xfce4/terminal"

apply "$TEMPLATE/colors-xfce4-terminal.theme" \
    "$TERMINAL_THEME/xtheme.theme" || exit 1

mkdir -p "$TERMINAL_RC" 2>/dev/null

if [[ -e "$TERMINAL_RC/terminalrc" ]]; then
    cp -f "$TERMINAL_RC/terminalrc" "$TERMINAL_RC/terminalrc.back" || exit 1
    cat   "$TERMINAL_RC/terminalrc" | grep -v Color > "$TERMINAL_RC/terminalrc.tmp" || exit 1
else
    echo "[Configuration]" > "$TERMINAL_RC/terminalrc.tmp" || exit 1
fi

cat   "$TERMINAL_THEME/xtheme.theme" | grep Color >> "$TERMINAL_RC/terminalrc.tmp" || exit 1
mv -f "$TERMINAL_RC/terminalrc.tmp" "$TERMINAL_RC/terminalrc" || exit 1
