title PC Tweaker - Aqua
@echo off
setlocal enableDelayedExpansion
cls

:menu
echo [91m~      Made by a very sophisticated water bottle!       ~[0m
echo -----------------------------------------------------------
echo ---               [93mQuick[0m + [92mEasy[0m PC Tweaker              ---
echo ---  [91m[4mDisclaimer[0m[0m : Create a system restore before using!  ---
echo ---                [97m[4mCredits[0m : [96mAqua#6666[0m                  ---
echo -----------------------------------------------------------
echo  [93m1. Do All Optimizations[0m
echo  [92m2. Network Optimizations[0m
echo  [95m3. Autoclear Setting[0m
echo  [91m4. Quit[0m
echo -----------------------------------------------------------

set /p choice=Enter your choice : 

if %choice%==1 goto optimizations
if %choice%==2 goto network
if %choice%==3 goto autoclear
if %choice%==4 goto end


echo [91mInvalid Entry, please choose 1, 2, 3, 4![0m      
pause
cls
goto menu

set autoclear="True"


Rem Auto Clear Option

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



Rem Auto Clear Option

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


:network
netsh interface tcp set heuristics disabled
echo Disabled Network Heuristics

pause
if !autoclear!=="True" cls
goto menu

:end