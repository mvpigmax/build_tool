@echo off
set amakeroot=C:\build\amake
nmake /NOLOGO -f %amakeroot%\windows\makefile.win prjfile=%1 amakeroot=%amakeroot%