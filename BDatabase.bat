:alwaysexecutecommands
@echo off
set setting1=false
set setting2=false
goto entername

:entername
title Enter name
echo firstly enter your name...
echo (Note: Name will not be saved)
set /p name=Enter:
set name=%name%
goto menuredirect

:menu
@ECHO OFF
title Database Batch
echo welcome to the menu %name%
echo.
echo ___________________________________________________________________________
echo choice 1 - type data to enter the batch database
echo choice 2 - type N232 for ???
echo choice 3 - type exit to close this program
echo ___________________________________________________________________________
echo.
SET choice=
SET /p choice=Select:
IF NOT '%choice%'=='' SET choice=%choice:~0,5%
IF '%choice%'=='data' GOTO d
IF '%choice%'=='exit' GOTO e
IF '%choice%'=='N232' GOTO N232
cls
GOTO menu

:checksdPactive
if "%sd1p1activecheck%"=="true" (
  pause
  goto goto csdpa
) else (
  goto cancelsdactive
)
pause
goto d

:csdpa
if "%sd1p2activecheck%"=="true" (
  pause
  goto csdpa2
) else (
  goto cancelsdactive
)
pause
goto d

:csdpa2
if "%sd1p3activecheck%"=="true" (
  pause
  goto goto checkname
) else (
  goto cancelsdactive
)
pause
goto d

:N232
if "%sdactive%"=="true" (
  pause
  goto checksdPactive
) else (
  goto cancelsdactive
)
pause
goto d

:checkname
if "%name%"=="Matej" (
  pause
  goto acceptsdactive
) else (
  goto cancelsdactive
)
pause
goto d

:cancelsdactive
cls
echo ___________________________________________________________________________
echo Nope %name% - Acces Denied
echo ___________________________________________________________________________
pause
goto menuredirect

:acceptsdactive
title acceptsdactive
cls
echo ___________________________________________________________________________
echo Welcome %name%
echo ___________________________________________________________________________
pause
goto menuredirect

:menuredirect
@echo off
cls
goto menu

:e
@echo off
echo exiting...
title closing
color 4
echo debug1
echo debug2
echo debug3
echo debug4
echo debug5
echo debug6
echo debug7
echo debug8
echo debug9
echo debug10
color 1
color 2
color 3
color a
color b 
color c 
color 1a
color 2b
color 3c
exit
 
:d
cls
title Database Selection
echo welcome to the database %name%
echo please select database you want to enter
echo ___________________________________________________________________________
echo Type b to go back to the Menu
echo Type 1 for database 1
echo Type 2 for database 2
echo type 3 for database 3
echo Type 4 for database 4
echo Type 5 for database 5
echo Type 6 for database 6
echo Type 7 for database 7
echo Type 8 for database 8
echo Type 9 for database 9
echo ___________________________________________________________________________
echo %testInput%
echo ___________________________________________________________________________
echo.
echo.
echo.
SET dbchoice=
SET /p dbchoice=Select:
IF NOT '%dbchoice%'=='' SET dbchoice=%dbchoice:~0,15%
IF '%dbchoice%'=='1' GOTO db1
IF '%dbchoice%'=='2' GOTO db2
IF '%dbchoice%'=='3' GOTO db3
IF '%dbchoice%'=='4' GOTO db4
IF '%dbchoice%'=='5' GOTO db5
IF '%dbchoice%'=='6' GOTO db6
IF '%dbchoice%'=='7' GOTO db7
IF '%dbchoice%'=='8' GOTO db8
IF '%dbchoice%'=='9' GOTO db9
IF '%dbchoice%'=='b' GOTO menuredirect
IF '%dbchoice%'=='secretdatabase1' GOTO secretdatabase1password1
IF '%dbchoice%'=='r' GOTO restart
IF '%dbchoice%'=='test' GOTO testing 
IF '%dbchoice%'=='tdebug' GOTO debug
if '%dbchoice%'=='ec-cmd' goto executecommand
::secret database 1 (sd1) - work in progress....
ECHO "%dbchoice%" is not valid
ECHO.
GOTO d

:debug
.%name%
goto menuredirect

:executecommand
cls
set /p executecommandpassword=password:
set executecommandpassword=%executecommandpassword%
if "%executecommandpassword%"=="devmode=true1181-000" (
goto executecommand1
) else (
echo password wrong
pause
goto menuredirect
)

:executecommand1
cls
set /p executecommand=command to execute:
set executecommand=%executecommand%
if "%setting1%"=="true" (
  echo %executecommand%
  pause
) else (
  echo Setting 1 = False
  pause
  goto d
)

::secret database 1 note1: password 1 = XXX
::secret database 1 note2: password 2 = XXX
::secret database 1 note3: password 3 = XXX

:secretdatabase1password1
cls
set sd1p1activecheck=true
title entering secret database p1
echo ___________________________________________________________________________
echo Welcome %name% to the "secret database" of this "project"
echo ofc you need a key / password (3 of them) to access the database
echo ___________________________________________________________________________
echo.
echo.
title secret database password 1
echo (note/tip) all caps or low "keys" must be correct example "EdeR" but the password for example is "eder" then it will not be correct
echo so let's start with entering the key number 1
SET sd1password=
SET /p sd1password=Enter the password number 1:
IF NOT '%sd1password%'=='' SET sd1password=%sd1password:~0,15%
IF '%sd1password%'=='XXX' GOTO secretdatabase1password2
echo "%sd1password%" is not valid key/password
echo.
goto d

:secretdatabase1password2
cls
set sd1p2activecheck=true
echo (Note/tip) any failed attempts will result you going back in the main database selection menu
echo .%name% congrats you made it to the password 2 thing idk... good luck
title secret database password 2
SET sd1password=
SET /p sd1password=Enter the password number 2:
IF NOT '%sd1password%'=='' SET sd1password=%sd1password:~0,15%
IF '%sd1password%'=='XXX' GOTO secretdatabase1password3
echo "%sd1password%" is not valid key/password
echo.
goto d

:secretdatabase1password3
cls
set sd1p3activecheck=true
echo .%name% you made it to the final thing
echo good luck getting in....
title secret database password 3
SET sd1password=
SET /p sd1password=Enter the password number 3:
IF NOT '%sd1password%'=='' SET sd1password=%sd1password:~0,15%
IF '%sd1password%'=='XXX' GOTO sd1redirect
echo "%sd1password%" is not valid key/password
echo.
goto d

:sd1redirect
title %name% you made it here.... (redirecting....)
cls
echo yay you made it here...
echo hope you wrote that password somewhere safe in note...
echo anyways let's redirect you to the secret database number 1 (maybe there's more secret databases (; (winky face hehe) )
::secret database 1 activate - reset
:: ----------------------------------
echo good luck and bye....
cls
goto secretdatabase1

:secretdatabase1
::secret database 1 activate - activate / on / true
set sdactive=true
::-----------------------------------
title Secret database 1
echo .%name% wow you really got there
pause
goto menuredirect

:restart
start databaseMs.bat
exit

:: Note: > = read , < = Write into/from files
:: database 1 - database1.txt
:db1
@echo off
title database 1
cls
echo Database 1 - b to go back to the database selection menu
set sdactive=false
echo Type w for write (into file) , Type r to read the file
echo database 1: name,discord account,amount of bans,note
SET dbchoice=
SET /p dbchoice=Select:
IF NOT '%dbchoice%'=='' SET dbchoice=%dbchoice:~0,1%
IF '%dbchoice%'=='b' GOTO rtdb
IF '%dbchoice%'=='r' GOTO readdbone
IF '%dbchoice%'=='w' GOTO writedbone
ECHO "%dbchoice%" is not valid
ECHO.
GOTO db1

:rtdb
cls
@echo off
goto d

:readdbone
@echo off
title reading database 1....
echo <database1.txt
set /p input=<database1.txt
echo ..........................
echo %name%, %discord-account%, %bans%, %note%
echo.
echo.
echo.
pause
goto db1

:writedbone
@echo off
set input=
set /p input=>database.txt
IF NOT '%input%'=='' SET input=%input:~0,50%
SET uchoice=
SET /p uchoice=Select:
IF NOT '%uchoice%'=='' SET uchoice=%uchoice:~0,100000000%
IF '%uchoice%'=='w' GOTO writedbone
ECHO "%uchoice%" is not valid
ECHO.
goto writedbone

:testingredirectverify
cls
if "%setting2%"=="true" (
goto testing
) else (
  goto 
)
pause
goto d

:testing
set /p test=Enter Any keyboard input:
set test=%test%

pause
goto d
