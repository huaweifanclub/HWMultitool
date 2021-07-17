#!/bin/bash
PS3='Please, select location: '
options=("Default" "Internal" "External" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Default")
	adb shell pm set-install-location 0
	;;
        "Internal")
	adb shell pm set-install-location 1
	;;
        "External")
	adb shell pm set-install-location 2
	;;
	"Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
