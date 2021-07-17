select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings put system isShowNetworkType 1 && exit; break;;
		No ) adb shell settings put system isShowNetworkType 0 && exit;;
	esac
done
