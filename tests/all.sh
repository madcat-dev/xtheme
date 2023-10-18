#!/usr/bin/env bash

LC_ALL=C
BASE="$(dirname "${BASH_SOURCE:-$0}")"

source "$BASE/../xtheme"

# TEST's ----------------------------------------------------------------------

echo "rgb #112233:          $(hex_to_rgb '#112233')"
#echo "rgb_to_hsv #112233:   $(rgb_to_hsv '#112233') (210, 67, 20)"  
#echo "hsv_to_rgb 210 67 20: $(hsv_to_rgb 210 67 20) (#112233)"
#echo

#echo "hsv_to_rgb 210 0 20: $(hsv_to_rgb 210 0 20) (#333333)"
#echo "rgb_value: $(rgb_value "#112233" 10)"
#echo "rgb_value: $(rgb_value "#112233" +10)"
#echo "rgb_value: $(rgb_value "#112233" -10)"
#echo "rgb_value: $(rgb_value "#112233" -10%)"
#echo "rgb_value: $(rgb_value "#112233" -%)"

#echo $(error "test error")
#echo $(fatal "test fatal")

#echo
#echo


#echo "Find: $(find template colors.sh)"
#echo "Find: $(find template ~/work/xtheme/templates/colors.sh)"

#echo "Apply: $(apply "$BASE/templates/colors.sh" "/tmp/colors.sh" && echo 'OK' || echo 'Error')"
#echo "Apply: $(apply "$BASE/tepmlates/colors.sh.bad" "/tmp/colors.sh" && echo 'OK' || echo 'Error')"

#template colors.sh
#template colors.sh "/tmp"
#template colors.sh "/tmp/c.sh"
#template colors.sh "/tmp/var/"
#template colors.sh "/tmp/var/c.sh"
#template colors.sh "$XTHEME_CACHE"

#template xrdb
#template xrdb "/tmp"
#template xrdb "/tmp/c.sh"
#template xrdb "/tmp/var/c.sh"
#template xrdb "$XTHEME_CACHE"

#template colors.sh.bad
