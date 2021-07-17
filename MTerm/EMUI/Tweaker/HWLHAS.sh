select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system hw_launcher_hide_apps 1 && exit; break;;
		No ) adb shell settings put system hw_launcher_hide_apps 0 && exit;;
	esac
done
