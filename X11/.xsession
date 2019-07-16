# Enable Mouse tap
touchpad_id=$(xinput list | grep Touchpad | sed 's/.*id=\([0-9]*\).*/\1/')
xinput set-prop $touchpad_id 285 1
# Enable compose key for international keys
xmodmap -e "keycode 108 = Multi_key"
