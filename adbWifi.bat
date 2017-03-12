SET /P _device= Enter device address:
SET /P _ssid= Input ssid:
SET /P _passphrase= Input passphrase:

adb -s %_device shell am startservice -n com.google.wifisetup/.WifiSetupService -a WifiSetupService.Connect -e ssid %_ssid -e passphrase %_passphrase
pause