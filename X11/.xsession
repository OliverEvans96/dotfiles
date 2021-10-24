# TODO: This stuff should only happen on login or startup
# but actually, this file is sourced every time a terminal is opened

# Get touchpad
touchpad_id=$(xinput list | grep Touchpad | sed 's/.*id=\([0-9]*\).*/\1/')
# Enable Mouse tap
tap_id=$(xinput list-props $touchpad_id | grep 'Tapping Enabled (.[0-9]*)' | sed 's/.*(\([0-9]\{1,3\}\)).*/\1/')
xinput set-prop $touchpad_id $tap_id 1
# Disable "natural scrolling"
scroll_id=$(xinput list-props $touchpad_id | grep 'Natural Scrolling Enabled (.[0-9]*)' | sed 's/.*(\([0-9]*\)).*/\1/')
xinput set-prop $touchpad_id $scroll_id 0
# Enable compose key for international keys
xmodmap -e "keycode 108 = Multi_key"
