#!/bin/bash

clear
echo "Welcome to Multitool deleter!"
PS3='Please, select app: '
options=("AI Search" "AliExpress" "AppGallery" "Android Assebility Suite (Talkback)" "Backup" "Chrome, default browser" "Cloud" "Digidal balance" "Google Search" "Google Docs" "Google Drive" "Google Duo" "Microsoft Edge" "Microsoft Excel" "HUAWEI Files (Installing zArchiver)" "Google GMail" "Google Play Games" "Google Play Movies & TV" "Google Play Music" "Google Play with Backup Transport and dependencies (Installing F-Droid)" "Google Text-to-speech Engine" "HMS Core" "HUAWEI Services Framework" "HUAWEI Home (Installing Trebuchet)" "HUAWEI Music (Installing Retro Music)" "HUAWEI Video" "Instagram" "VK" "Yandex Apps" "Google Maps" "HUAWEI Member Center" "Microsoft Office Hub" "Microsoft OneDrive" "HUAWEI Party Mode" "Google Photos" "Google Sheets" "Google Slides" "Microsoft PowerPoint" "Sim Toolkit (Stk)" "Easter Egg" "Pinterest" "TikTok" "EMUI Update" "HUAWEI Support" "Google Translate" "HUAWEI Weather" "Microsoft Word" "Microsoft Launcher" "Microsoft Teams" "Microsoft SwiftKey (Installing OpenBoard)" "YouTube (Installing MicroG)" "SberBank" "Xiaomi Tools & Services" "Joom" "Facebook" "Exit")
select opt in "${options[@]}"
do
    case $opt in
 	"AI Search")
	adb shell pm uninstall -k --user 0 com.huawei.search
	;;
	"AliExpress")
	adb shell pm uninstall -k --user 0 com.alibaba.aliexpresshd
	;;
	"AppGallery")
	adb shell pm uninstall -k --user 0 com.huawei.appmarket
	;;
	"Android Assebility Suite (Talkback)")
	adb shell pm uninstall -k --user 0 com.google.android.marvin.talkback
	;;
	"Backup")
	adb shell pm uninstall -k --user 0 com.huawei.KoBackup
	;;
	"Chrome, default browser")
	adb shell pm uninstall -k --user 0 com.android.chrome
	adb shell pm uninstall -k --user 0 com.android.browser
	;;
	"Cloud")
	adb shell pm uninstall -k --user 0 com.huawei.hicloud
	;;
	"Digidal balance")
	adb shell pm uninstall -k --user 0 com.huawei.parentcontrol
	;;
	"Google Search")
	adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
	;;
	"Google Docs")
	adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.docs
	;;
	"Google Drive")
	adb shell pm uninstall -k --user 0 com.google.android.apps.docs
	;;
	"Google Duo")
	adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
	;;
	"Microsoft Edge")
	adb shell pm uninstall -k --user 0 com.microsoft.emmx
	;;
	"Microsoft Excel")
	adb shell pm uninstall -k --user 0 com.microsoft.office.excel
	;;
	"HUAWEI Files (Installing zArchiver)")
	adb shell pm uninstall -k --user 0 com.huawei.hidisk
	adb install Apps/zArch.apk
	;;
	"Google GMail")
	adb shell pm uninstall -k --user 0 com.google.android.gm
	;;
	"Google Play Games")
	adb shell pm uninstall -k --user 0 com.google.android.play.games
	;;
	"Google Play Movies & TV")
	adb shell pm uninstall -k --user 0 com.google.android.videos
	;;
	"Google Play Music")
	adb shell pm uninstall -k --user 0 com.google.android.music
	;;
	"Google Play with Backup Transport and dependencies (Installing F-Droid)")
	adb shell pm uninstall -k --user 0 com.google.android.partnersetup
	adb shell pm uninstall -k --user 0 com.google.android.feedback
	adb shell pm uninstall -k --user 0 com.google.android.ims
	adb shell pm uninstall --user 0 com.android.vending
	adb install Apps/fdroid.apk
	;;
	"Google Text-to-speech Engine")
	adb shell pm uninstall -k --user 0 com.google.android.tts
	;;
	"HMS Core")
	adb shell pm uninstall -k --user 0 com.huawei.hwid
	;;
	"HUAWEI Services Framework")
	adb shell pm uninstall -k --user 0 com.huawei.android.hsf
	adb shell pm uninstall -k --user 0 com.huawei.hifolder
	adb shell pm uninstall -k --user 0 com.ironsource.appcloud.oobe.huawei
	adb shell pm disable-user --user 0 com.huawei.hwid
	adb shell pm disable-user --user 0 com.huawei.android.chr
	adb shell pm uninstall -k --user 0 com.huawei.featurelayer.sharedfeature.map
	;;
	"HUAWEI Home (Installing Trebuchet)")
	adb shell pm disable-user --user 0 com.huawei.android.launcher
	adb install Apps/Trebuchet.apk
	;;
	"HUAWEI Music (Installing Retro Music)")
	adb shell pm disable-user --user 0 com.android.mediacenter
	adb install Apps/Retro.apk
	;;
	"HUAWEI Video")
	adb shell pm uninstall -k --user 0 com.huawei.himovie.overseas
	;;
	"Instagram")
	adb shell pm uninstall -k --user 0 com.instagram.android
	;;
	"VK")
	adb shell pm uninstall -k --user 0 com.vkontakte.android
	;;
	"Yandex Apps")
	adb shell pm uninstall -k --user 0 ru.yandex.searchplugin
	adb shell pm uninstall -k --user 0 com.yandex.browser
	;;
	"Google Maps")
	adb shell pm uninstall -k --user 0 com.google.android.apps.maps
	;;
	"HUAWEI Member Center")
	adb shell pm uninstall -k --user 0 com.huawei.mycenter
	;;
	"Microsoft Office Hub")
	adb shell pm uninstall -k --user 0 com.microsoft.office.officehubrow
	;;
	"Microsoft OneDrive")
	adb shell pm uninstall -k --user 0 com.microsoft.skydrive
	;;
	"HUAWEI Party Mode")
	adb shell pm uninstall -k --user 0 com.android.imedia.syncplay
	;;
	"Google Photos")
	adb shell pm uninstall -k --user 0 com.google.android.apps.photos
	;;
	"Google Sheets")
	adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.sheets
	;;
	"Google Slides")
	adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.sheets
	;;
	"Microsoft PowerPoint")
	adb shell pm uninstall -k --user 0 com.microsoft.office.powerpoint
	;;
	"Sim Toolkit (Stk)")
	adb shell pm disable-user --user 0 com.android.stk
	adb shell pm uninstall -k --user 0 com.android.printspooler
	adb shell pm uninstall -k --user 0 com.android.apps.tag
	;;
	"Easter Egg")
	adb shell pm uninstall -k --user 0 com.android.egg
	;;
	"Pinterest")
	adb shell pm uninstall -k --user 0 com.pinterest
	;;
	"TikTok"
	adb shell pm uninstall -k --user 0 com.zhiliaoapp.musically
	;;
	"EMUI Update")
	adb shell pm uninstall -k --user 0 com.huawei.android.hwouc
	;;
	"HUAWEI Support")
	adb shell pm disable-user --user 0 com.huawei.phoneservice
	;;
	"Google Translate")
	adb shell pm uninstall -k --user 0 com.google.android.apps.translate
	;;
	"HUAWEI Weather")
	adb shell pm uninstall -k --user 0 com.huawei.android.totemweather
	;;
	"Microsoft Word")
	adb shell pm uninstall -k --user 0 com.microsoft.office.word
	;;
	"Microsoft Launcher")
	adb shell pm uninstall -k --user 0 com.microsoft.launcher.enterprise
	;;
	"Microsoft Teams")
	adb shell pm uninstall -k --user 0 com.microsoft.teams
	;;
	"Microsoft SwiftKey (Installing OpenBoard)")
	adb shell pm uninstall -k --user 0 com.swiftkey.swiftkeyconfigurator
	adb shell pm uninstall -k --user 0 com.touchtype.swiftkey
	adb install Apps/OpenBoard.apk
	;;
	"YouTube (Installing MicroG)")
	adb shell pm uninstall -k --user 0 com.google.android.youtube
	adb install Apps/MicroG.apk
	;;
	"SberBank")
	adb shell pm uninstall -k --user 0 ru.sberbankmobile
	;;
	"Xiaomi Tools & Services")
	adb shell pm uninstall --user 0 com.mi.global.bbs
	adb shell pm uninstall --user 0 com.mi.AutoTest
	adb shell pm uninstall --user 0 com.mi.android.globalpersonalassistant
	adb shell pm uninstall --user 0 com.mi.globalTrendNews
	adb shell pm uninstall --user 0 com.mi.webkit.core
	adb shell pm uninstall --user 0 com.milink.service
	adb shell pm uninstall --user 0 com.mipay.wallet.in
	adb shell pm uninstall --user 0 com.miui.analytics
	adb shell pm uninstall --user 0 com.miui.bugreport
	adb shell pm uninstall --user 0 com.miui.cloudbackup
	adb shell pm uninstall --user 0 com.miui.cloudservice
	adb shell pm uninstall --user 0 com.miui.cloudservice.sysbase
	adb shell pm uninstall --user 0 com.miui.daemon
	adb shell pm uninstall --user 0 com.miui.freeform
	adb shell pm uninstall --user 0 com.miui.hybrid
	adb shell pm uninstall --user 0 com.miui.hybrid.accessory
	adb shell pm uninstall --user 0 com.miui.micloudsync
	adb shell pm uninstall --user 0 com.miui.miwallpaper
	adb shell pm uninstall --user 0 com.miui.msa.global
	adb shell pm uninstall --user 0 com.miui.providers.weather
	adb shell pm uninstall --user 0 com.miui.touchassistant
	adb shell pm uninstall --user 0 com.miui.translation.kingsoft
	adb shell pm uninstall --user 0 com.miui.translation.youdao
	adb shell pm uninstall --user 0 com.miui.translationservice
	adb shell pm uninstall --user 0 com.miui.virtualsim
	adb shell pm uninstall --user 0 com.miui.vsimcore
	adb shell pm uninstall --user 0 com.miui.weather2
	adb shell pm uninstall --user 0 com.miui.yellowpage
	adb shell pm uninstall --user 0 com.miui.enbbs
	adb shell pm uninstall --user 0 com.xiaomi.account
	adb shell pm uninstall --user 0 com.xiaomi.glgm
	adb shell pm uninstall --user 0 com.xiaomi.joyose
	adb shell pm uninstall --user 0 com.xiaomi.location.fused
	adb shell pm uninstall --user 0 com.xiaomi.micloud.sdk
	adb shell pm uninstall --user 0 com.xiaomi.mipicks
	adb shell pm uninstall --user 0 com.xiaomi.mirecycle
	adb shell pm uninstall --user 0 com.xiaomi.payment
	adb shell pm uninstall --user 0 com.xiaomi.powerchecker
	adb shell pm uninstall --user 0 com.xiaomi.simactivate.service
	adb shell pm uninstall --user 0 com.xiaomi.xmsf
	adb shell pm uninstall --user 0 org.simalliance.openmobileapi.service
	adb shell pm uninstall --user 0 com.miui.android.fashiongallery
	adb shell pm uninstall --user 0 com.mfashiongallery.emag
	;;
	"Joom")
	adb shell pm uninstall --user 0 com.joom
	;;
	"Facebook")
	adb shell pm uninstall --user 0 com.facebook.katana
	adb shell pm uninstall --user 0 com.facebook.appmanager
	adb shell pm uninstall --user 0 com.facebook.services
	adb shell pm uninstall --user 0 com.facebook.system
	;;
	"Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
