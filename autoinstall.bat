msiexec /i 7zipx64.msi /le "7zip-log.txt" /passive /norestart TARGETDIR="C:\Program Files\7-Zip"

msiexec paintx64.net.exe /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1

msiexec /i inkscape-x64.msi /le "inkscape-log.txt" /qr /norestart TARGETDIR="C:\Program Files\Graphics\Inkscape"

msiexec /i LibreOffice.msi /le "libreoffice-install-log.txt"  /passive /norestart
msiexec /i LibreOffice_helppack_ru.msi /le+ "libreoffice-install-log.txt" /passive /forcerestart


msiexec /i Notepad++.msi /quiet
    
    (
    echo INSTALLDIR=C:\Java\JRE
    echo WEB_JAVA=1
    echo WEB_ANALYTICS=0
    echo INSTALL_SILENT = 1
    ) > "config.cfg"
    
jre-8x64.exe INSTALLCFG="%cd%\config.cfg" /L "%cd%\jre-log.log" /s