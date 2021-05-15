@ECHO OFF

:choice
set /P c=Do you want to download/update Airfishypack?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
if /I "%c%" EQU "PENIS" goto :fuck
goto :choice


:somewhere

echo "Installing Airfishy's Pack"
rmdir "%appdata%\.minecraft\resourcepacks\Airfishy"
rmdir "%appdata%\.minecraft\resourcepacks\Air Fishy"
del "%appdata%\.minecraft\resourcepacks\pack.zip"
del "%appdata%\.minecraft\resourcepacks\pvppack.zip"
mkdir "%appdata%\.minecraft\resourcepacks\Airfishy"
move "pack.png" "%appdata%\.minecraft\resourcepacks\Airfishy"
move "pack.mcmeta" "%appdata%\.minecraft\resourcepacks\Airfishy"
move "assets" "%appdata%\.minecraft\resourcepacks\Airfishy"
echo "Success!"
pause
exit


:somewhere_else

echo "Canceled"
pause
exit


:fuck

echo "fuck you"
pause
exit

