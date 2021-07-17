#!/bin/bash

clear
echo "Welcome to HUAWEI/Android Console MultiTool!"
echo "Version: 0.1.3 Stable, developer: TeamMT (alpinealps, old nickname: fsvk74)"
echo "LICENSE - MIT (For ALL Scripts in THIS MultiTool)"
echo "If yo want to donate me (RUS) please, contact me on 4PDA ^^"
echo "Last IMEI, Last full information from build.prop and Last Unlock Code will be saved in EMUI/Backups"
PS3='Please enter your choice (Press Enter, if you don`t see menu): '
options=("Get info about phone" "FI Flash Program" "FI Unlock Program" "Deleter" "Deleter_Groups" "PowerGenue" "EMUI Tweaker" "Samsung Flash Program" "Setup Program" "Get default install location" "Set default install location" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Get info about phone")
            adb shell getprop | grep -i ro.product.model
	    adb shell getprop | grep -i ro.huawei.build.version.incremental
	    adb shell getprop | grep -i ro.huawei.build.version.security_patch
	    adb shell getprop | grep -i ro.config.cpu_info_display
	    adb shell getprop | grep -i ro.build.version.emui
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
	"Delete apps manually")
		bash EMUI/Deleter.sh
	;;
	"Deleter_Groups")
		bash EMUI/Deleter.sh
	    ;;
	"EMUI Tweaker")
		echo "Starting Tweaker program..."
		clear
		bash EMUI/EMUITweaker.sh
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
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
