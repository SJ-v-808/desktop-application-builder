[About]
> Desktop-App-Builder (DAB) is a cli-tool for publishing or removing linux desktop application in the main-system-applications folder

[usage]

|For Developers ~> (to install or remove custom or self-made apps in the system)|

#For making .desktop file for the application#
> ./dab.sh <Application_path> <Application_name> <Application_icon>

#For publishing app in your system
> ./dab.sh pb <Application_name>

#For removing app in your system
> ./dab.sh rm <Application_name>

|For users ~> (to install or remove pre-packaged apps in the system)|

#For installing packaged app in the system#
> ./dab.sh i (note: go to the folder where the app u want to install reside and then execute this command)

#For removing app in your system#
> ./dab.sh rm <Application_name>

#For help#
> ./dab.sh --h 

[Author]
> ibang
