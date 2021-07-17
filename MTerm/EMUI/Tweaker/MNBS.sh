select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system navigationbar_is_min 1 && exit; break;;
		No ) adb shell settings put system navigationbar_is_min 0 && exit;;
	esac
done
