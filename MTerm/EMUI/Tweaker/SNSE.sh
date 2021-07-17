select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system show_network_speed_enabled 1 && exit; break;;
		No ) adb shell settings put system show_network_speed_enabled 0 && exit;;
	esac
done
