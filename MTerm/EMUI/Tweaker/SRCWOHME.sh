select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system show_rounded_corners 1 && exit; break;;
		No ) adb shell settings put system show_rounded_corners 0 && exit;;
	esac
done