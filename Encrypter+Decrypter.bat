title Simple Encrypter + Decrypter Project - Aqua
@echo off
setlocal enableDelayedExpansion
cls

:menu
echo [91m~      Made by a very sophisticated water bottle!       ~[0m
echo --------------------------------------------------------
echo ---             Simple [93mEncrypter[0m + [92mDecrypter[0m         ---
echo ---  [91m[4mDisclaimer[0m[0m : Don't use for anything important!   ---
echo ---                [97m[4mCredits[0m : [96mAqua#6666[0m               ---
echo --------------------------------------------------------                                                        
echo ---             [93m1. Encrypt message[0m                   ---
echo ---             [92m2. Decypt[0m                            ---
echo ---             [95m3. Autoclear Setting[0m                 ---
echo ---             [91m4. Quit[0m                              ---                                                   
echo --------------------------------------------------------

set /p choice=Enter your choice : 

if %choice%==1 goto encrypt
if %choice%==2 goto decrypt
if %choice%==3 goto autoclear
if %choice%==4 goto end


echo [91mInvalid Entry, please choose 1, 2, 3, 4![0m      
pause
cls
goto menu

set autoclear="True"

:autoclear
echo --------------------------------------------------------                                                        
echo ---             [93m1. Enable[0m                            ---
echo ---             [92m2. Disable[0m                           ---
echo --------------------------------------------------------                                                        
set /p choice=Enter your choice : 
if %choice%==1 goto settrue
if %choice%==2 goto setfalse

echo [91mInvalid entry, please choose 1 or 2![0m      
pause
if !autoclear!=="False" goto menu
cls
goto menu

:settrue
set autoclear="True"
echo [93mSuccessfully enabled autoclear![0m
pause
cls
goto menu

:setfalse
set autoclear="False"
echo [93mSuccessfully disabled autoclear![0m
pause
goto menu

:encrypt
set /p code=[93mText[0m : 
set chars=0123456789abcdefghijklmnopqrstuvwxyz!.?,;:'"

for /L %%N in (1 1 44) do (

for /F %%C in ("!chars:~%%N,1!") do (

set "code=!code:%%C=-%%N!"

)

)

echo [92m!code![0m" - Copied to clipboard!"
echo !code!| clip
pause
if !autoclear!=="True" cls
goto menu


:decrypt
set /p code=[92mText[0m : 
set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (1 1 44) do (

for /F %%C in ("!chars:~%%N,1!") do (

set "code=!code:%%N=%%C!"

)

)

set code=%code:-=%
echo [93m!code![0m" - Copied to clipboard!"
echo !code!| clip
pause
if !autoclear!=="True" cls
goto menu

:end