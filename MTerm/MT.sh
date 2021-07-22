#!/bin/bash

clear
echo "Welcome to Android MultiTool!"
echo "Last IMEI and Last Unlock Code will be saved in EMUI/Backups"
PS3='Please enter your choice (Press Enter, if you don`t see menu): '
options=("Get info about phone" "FI Flash Program" "FI Unlock Program" "Delete apps" "PowerGenue" "Tweaker" "Samsung Flash Program" "Setup Program" "Get default install location" "Set default install location" "About" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Get info about phone")
            adb shell getprop | grep -i ro.product.model
	    adb shell getprop | grep -i ro.huawei.build.version.incremental
	    adb shell getprop | grep -i ro.huawei.build.version.security_patch
	    adb shell getprop | grep -i ro.config.cpu_info_display
	    adb shell getprop | grep -i ro.build.version.emui
	    adb shell getprop | grep -i ro.build.display.id
	    adb shell getprop | grep -i ro.build.description
	    adb shell getprop | grep -i ro.product.name
	    adb shell getprop | grep -i ro.board.platform
	    adb shell getprop | grep -i ro.build.version.security_patch
	    adb shell getprop | grep -i ro.build.id
	    adb shell getprop | grep -i ro.build.version.sdk
	    adb shell getprop | grep -i ro.build.product.real.id
	    adb shell getprop | grep -i ro.bootimage.build.date
	    adb shell getprop | grep -i debug.aps.current_battery
	    adb shell service call iphonesubinfo 1 > EMUI/Backups/LastIMEI.txt
	    echo "Getting IMEI..."
	    adb shell service call iphonesubinfo 1
            ;;
	"FI Flash Program")
	    bash EMUI/Flasher.sh
	    ;;
	"FI Unlock Program")
	    bash EMUI/Unlocker.sh
	    ;;
	"Delete apps")
		bash EMUI/Deleter.sh
	;;
	"Tweaker")
		echo "Starting Tweaker program..."
		clear
		bash EMUI/Tweaker.sh
	    ;;
	"PowerGenue")
		bash EMUI/PG.sh
	    ;;
	"Samsung Flash Program")
		bash EMUI/SFlash.sh
	    ;;
	"Setup Program")
		clear
		bash EMUI/Setuper.sh
	    ;;
	"Get default install location")
		echo "0 - Auto (default), 1 - internal, 2 - external)"
		adb shell pm get-install-location
	;;
	"Set default install location")
		bash EMUI/SDIL.sh
	;;
	"About")
	echo "Version: 0.1.3 Stable, developer: TeamMT (alpinealps, old nickname: fsvk74)"
	echo "LICENSE - MIT (For ALL Scripts in THIS MultiTool)"
	echo "If yo want to donate me (RUS) please, contact me on 4PDA ^^"
	;;
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
