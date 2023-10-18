#!/usr/bin/env bash

LC_ALL=C
BASE="$(dirname "${BASH_SOURCE:-$0}")"

source "$BASE/../xtheme"

# TEST's ----------------------------------------------------------------------

#echo "Clear theme:"
#clear_colors
#refill_colors
#preview_xtheme
#echo

#echo "Clear theme light:"
#PREFER_DARK_THEME=
#clear_colors
#refill_colors
#preview_xtheme
#PREFER_DARK_THEME=1
#echo

#echo "Import from xrdb:"
#clear_colors
#import_xrdb_colors
#refill_colors
#preview_xtheme
#echo

echo "Import theme nord:"
clear_colors
import_theme_colors nord
refill_colors
preview_xtheme
echo

echo "Import theme nord and merge Matcha-dark-sea:"
clear_colors
import_theme_colors nord
merge_theme_colors Matcha-dark-sea
refill_colors
preview_xtheme
echo

#echo -e "\033[36mTest: import from image ./img/1.jpg\033[0m"
#clear_colors
#import_image_colors "$BASE/img/1.jpg"
#refill_colors
#preview_xtheme
#echo

#echo -e "\033[36mTest: import from image ./img/2.jpg\033[0m"
#clear_colors
#import_image_colors "$BASE/img/2.jpg"
#refill_colors
#preview_xtheme
#echo

#echo -e "\033[36mTest: import from image ./img/3.jpg\033[0m"
#clear_colors
#import_image_colors "$BASE/img/3.jpg"
#refill_colors
#preview_xtheme
#echo

echo -e "\033[32mTest complete!\033[0m"
