# Define the file path
FILE_PATH="$HOME/.config/hypr/monitors.conf"

# Define the two types of strings
BIG1="monitor = DP-1, 3840x2160@60, 0x0, 2.5"
BIG2="monitor = eDP-1, disable"
SMALL1="#Small Screen"
SMALL2="monitor = eDP-1, 1920x1080@60, 0x0, 1.5"

# Change parts of file
if grep -q "$SMALL1" "$FILE_PATH"; then
    sed -i "s/$SMALL1/$BIG1/g" "$FILE_PATH"
    sed -i "s/$SMALL2/$BIG2/g" "$FILE_PATH"
    notify-send -u normal "Set to Big Screen"
else
    sed -i "s/$BIG1/$SMALL1/g" "$FILE_PATH"
    sed -i "s/$BIG2/$SMALL2/g" "$FILE_PATH"
    notify-send -u normal "Set to Small Screen"
fi
