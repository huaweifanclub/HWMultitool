select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system hw_theme_support_hwid 1 && exit; break;;
		No ) adb shell settings put system hw_theme_support_hwid 0 && exit;;
	esac
done
