ECHO OFF
mode con: cols=60 lines=37
color 6
ECHO **********************************
ECHO **********************************
:start
cls
ECHO Disk serials
wmic diskdrive get serialnumber   
ECHO .                                          -
ECHO CPU serials
wmic cpu get serialnumber
echo                                                   -
ECHO BIOS serials
wmic bios get serialnumber
echo                                                   -
ECHO Motherboard serials
wmic baseboard get serialnumber
echo                                                   -
ECHO BIOS UUID serials
wmic path win32_computersystemproduct get uuid
getmac
echo Press any key to get your hardware serials again.
pause>nul
goto start