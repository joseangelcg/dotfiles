#!/usr/bin/bash

case "$(printf "Lock\nSleep\nPowerOff\nReboot" | rofi -dmenu -i -p "What you wanna do?")" in
    Lock) swaylock -f ;;
    Sleep) systemctl suspend ;;
    PowerOff) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    *) exit 1 ;;
esac

