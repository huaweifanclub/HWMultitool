select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system user_rotation 1 && exit; break;;
		No ) adb shell settings put system user_rotation 0 && exit;;
	esac
done
