# NFCScreenOFF
MOD for enabling NFC when screen is OFF for stock Android 7.0 SONY devices


## 0.-Download required smali/baksmali tools
These allow to extract the 'source' code of the NfcNci.odex file, in order to be able to modify them later. They can be found here (or build them yourself):
https://bitbucket.org/JesusFreke/smali/downloads/


## 1.-Extracting required files
Execute the following commands, to extract the .oat framework files and the .odex file of the NfcNci package:

`adb adb pull /system/framework/arm64/`

`adb pull /system/app/NfcNci/NfcNci.apk`

`adb pull /system/app/NfcNci/oat/arm64/NfcNci.odex`


## 2.-Odex to smali
Let's convert the odex file to modifiable code. Run:

`baksmali.jar x -c system/framework/arm64/boot.oat -d system/framework/arm64/ system/app/NfcNci/oat/NfcNci.odex -o NfcNci/`

And give it a couple of minutes to end the task


## 3.-MODifying source code
The required modifications can be found here: https://github.com/bamsbamx/NFCScreenOFF/commit/12f21d6cff22eedd80775039beb517723751befd


## 4.-Recompile source code and rebuild APK
Run:
`smali a -o classes.dex NfcNci/`

And copy classes.dex into original NfcNci.apk (worked with 7-Zip for me). (OPTIONAL) You can zipalign if you want


## 5.-Install the MODded APK
Overwrite THE NEW NfcNci.apk into /system/app/NfcNci.apk and chmod 0644 it, then reboot and it will be working
