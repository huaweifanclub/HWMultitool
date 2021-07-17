select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system hw_networkmode_gstyle 1 && exit; break;;
		No ) adb shell settings put system hw_networkmode_gstyle 0 && exit;;
	esac
done
