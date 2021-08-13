#!/bin/sh

Application_path=$1
Application_name=$2
Application_icon=$3

if [ $Application_path == "--h" ]
then 
    echo "[About]"
    echo "> Desktop-App-Builder (DAB) is a cli-tool for publishing or removing linux desktop application in the main-system-applications folder"
    echo ""
    echo "[usage]"
    echo ""
    echo "#For making .desktop file for the application#"
    echo "> ./dab.sh <Application_path> <Application_name> <Application_icon>"
    echo ""
    echo "#For publishing app in your system"
    echo "> ./dab.sh pb <Application_name>"
    echo ""
    echo "#For removing app in your system"
    echo "> ./dab.sh rm <Application_name>"
    echo ""
    echo "#For help#"
    echo "> ./dab.sh --h "
    echo ""
    echo "[Author]"
    echo "> ibang"
elif [ $Application_path == "pb" ]
then
    sudo mv $Application_name.desktop /usr/share/applications


elif [ $Application_path == "rm" ]
then
    sudo rm /usr/share/applications/$Application_name.desktop
else
    touch $Application_name.desktop

    echo [Desktop Entry] >> $Application_name.desktop
    echo Encoding=UTF-8 >> $Application_name.desktop
    echo Version=1.0 >> $Application_name.desktop
    echo Type=Application >> $Application_name.desktop
    echo Terminal=false >> $Application_name.desktop
    echo Exec=$Application_path >> $Application_name.desktop
    echo Name=$Application_name >> $Application_name.desktop
    echo Icon=$Application_icon >> $Application_name.desktop

fi
