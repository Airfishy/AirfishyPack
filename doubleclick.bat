@ECHO OFF

:choice
set /P c=Do you want to download/update Airfishypack?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere

echo "Installing Airfishy's Pack"
rmdir "%appdata%\.minecraft\resourcepacks\Airfishy"
rmdir "%appdata%\.minecraft\resourcepacks\Air Fishy"
del "%appdata%\.minecraft\resourcepacks\Air.zip"
del "%appdata%\.minecraft\resourcepacks\Airfishy.zip"
del "%appdata%\.minecraft\resourcepacks\pack.zip"
del "%appdata%\.minecraft\resourcepacks\pvppack.zip"
powershell Compress-Archive -Path .\* -DestinationPath "Air.zip"
move "Air.zip" "%appdata%\.minecraft\resourcepacks"
cd "%appdata%\.minecraft\resourcepacks"
ren "Air.zip" "Airfishy.zip"
echo "Success!"
pause
exit


:somewhere_else

echo "Canceled"
exit

