@echo off
echo ------------------------------------------------------------------------------
echo  MisterSheeple's Sonic Mania Android Build Helper v2.0 (Traduccion por SM2010)
echo ------------------------------------------------------------------------------
echo.
echo                                                  ADVERTENCIA:
echo.
echo Antes de continuar, porfavor mira la guia completa en:https://github.com/SM2010Ficial/Sonic-Mania-Android-Build-Guide-espa-ol-
echo.
pause
echo.
goto isitstillthere

:isitstillthere
echo Verificando si la carpeta existe ... 
echo.
if exist "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\ (
  echo La carpeta Existe y se esta eliminando, esto tardara unos 15 segundos...
  rmdir /s /q "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\
  c:\WINDOWS\System32\timeout.exe /t 15 /nobreak > NUL
  echo.
  echo La carpeta ya se debio haber borrado, continuando...
) else (
  echo No existe la carpeta, continuando...
)
echo.
goto preferences

:preferences
set touch=s
set ultrawide=s
set /p touch=Compilar con Controles tactiles? (s/n; Por defecto es s) 
set /p ultrawide=Compilar con soporte para pantallas super anchas? (s/n; Por defecto es s) 
cls
goto clone

:clone
git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation
git clone https://github.com/Rubberduckycooly/RSDKv5-Example-Mods.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods
git clone https://github.com/Rubberduckycooly/GameAPI.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
git clone https://github.com/Rubberduckycooly/RSDKv5-Decompilation.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5 --recursive
echo Se ha clonado exitosamente.
cls
goto dependencies

:dependencies
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android
curl -L http://downloads.xiph.org/releases/theora/libtheora-1.1.1.zip --output libtheora.zip
curl -L http://downloads.xiph.org/releases/ogg/libogg-1.3.5.zip --output libogg.zip
powershell -command "Expand-Archive -LiteralPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libtheora.zip' -DestinationPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\'"
powershell -command "Expand-Archive -LiteralPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg.zip' -DestinationPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\'"
pause
rename libtheora-1.1.1 libtheora
pause
for /f %%a IN ('dir ""%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5" /b') do move ""%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\%%a" ""%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\"
pause
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\Makefile.am "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\Makefile.am
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\Makefile.in "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\Makefile.in
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\config_types.h.in "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\config_types.h.in
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\Makefile.am "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\Makefile.am
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\Makefile.in "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\Makefile.in
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\ogg.h "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\ogg.h
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\os_types.h "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\os_types.h
pause
rmdir "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\ /s /q
del libtheora.zip libogg.zip
echo Las dependencias estan listas
pause
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\windows\libogg /s /y /i
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libtheora "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\windows\libtheora /s /y /i
echo Se han copiado las dependencias correctamente.
pause
cls
goto touchsetup

:touchsetup
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\ManiaTouchControls
if /I %touch%==n (goto ultrawidesetup)
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\ManiaTouchControls\GameAPI /s /y /i
pause
goto ultrawidesetup

:ultrawidesetup
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\UltrawideMania
if /I %ultrawide%==n (goto mainsymlinksetup)
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\UltrawideMania\GameAPI /s /y /i
pause
goto mainsymlinksetup

:mainsymlinksetup
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\android\app\jni
mklink /D "Game" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation
mklink /D "GameAPI" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
if /I %touch%==y mklink /D "MTouchCtrl" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\ManiaTouchControls
if /I %ultrawide%==y mklink /D "UWMania" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\UltrawideMania
echo Se configuro symlink correctamente.
goto finish

:finish
cls
color AF
echo -------------------------------------------------------------------------------------------------------------------
echo Instalacion completada. Porfavor sigue los pasos de la guia en: https://github.com/SM2010Ficial/Sonic-Mania-Android-Build-Guide-espa-ol-
echo -------------------------------------------------------------------------------------------------------------------
echo.
pause
exit
