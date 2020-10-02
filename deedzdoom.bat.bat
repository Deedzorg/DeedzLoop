@Echo off
mode con: cols=58 lines=20
Timeout /t 5 /NoBreak>nul
cls
title DeedzDoom
color 04
Echo ########    #########   #########   ########    #########
Echo #########   #########   #########   #########   #########
Echo  ###   ###  ###         ###          ###   ###        ###
Echo  ###   ###  #########   #########    ###   ###     ######
Echo  ###   ###  #########   #########    ###   ###  ######
Echo  ###   ###  ###         ###          ###   ###  ###
Echo #########   #########   #########   #########   #########
Echo #########   #########   #########   #########   ######### 
Echo.
Echo    #######       #####      #####    ######    #####
Echo    #########    #######    #######   ###############
Echo     ###   ###  ###   ###  ###   ###  ###   ###   ###
Echo     ###   ###  ###   ###  ###   ###  ###   ###   ###
Echo     ###   ###  ###   ###  ###   ###  ###   ###   ###
Echo     ###   ###  ###   ###  ###   ###  ###         ###
Echo    #########    #######    #######   ###         ###
Echo    #########     #####      #####    ###         ###



rem set values & checks for location 
:numero1
set welcome=Welcome


If exist C:\dd\Deedzdoom Goto A Else
Goto cd

:cd
Echo Initilazing. . . 
timeout 5
cd / 
md dd
cd dd
md deedzdoom
cd deedzdoom
Goto A

:A
cd /
cd dd/DeedzDoom
Echo Welcome to ~DeedzDoom~
:A1
set rn1=%random%
if exist temp%rn1%.vbs goto A1
echo ' > "temp%rn1%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn1%.vbs"
echo Set speech.Voice = speech.GetVoices.Item(1) >> "temp%rn1%.vbs"
echo speech.speak "%welcome%" >> "temp%rn1%.vbs"
start temp%rn1%.vbs
timeout /t 2 /NoBreak>nul
del temp%rn1%.vbs  
set ddt=to-deeds-doom
set eu=Input User Name
Goto num1

:num1
set rn=%random%
if exist temp%rn%.vbs goto num1
echo ' > "temp%rn%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn%.vbs"
echo speech.speak "%ddt%" >> "temp%rn%.vbs"
start temp%rn%.vbs
timeout /t 2 /NoBreak>nul
del temp%rn%.vbs
pause
Goto B

:B
Echo ~('')~ 
set un=NoEntry
if exist temp%rn%.vbs goto B
echo ' > "temp%rn%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn%.vbs"
echo speech.speak "%eu%" >> "temp%rn%.vbs"
start temp%rn%.vbs
timeout /t 2 /NoBreak>nul
set /p un=UserName:
del temp%rn%.vbs
Echo %Date% >>nSF.txt
Echo %Time% >>nSF.txt
if %un%==NoEntry Goto JK else
if /i %un%==Deedz Goto C Else
findstr "%un%" nSF.txt >nul
if %ErrorLevel%==1 Goto J else
Goto UL

:UL
Echo User Found!
set pass=NoEntry
set /p pass=Password:
if %pass%==NoEntry Goto Ul else
findstr "%pass%" nSF.txt >nul
if %ErrorLevel%==1 Goto JU else
pause
Goto UserLogedIn

:JU
Echo Password Not Found Try Again.

if exist temp%rn%.vbs goto JU
echo ' > "temp%rn%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn%.vbs"
echo speech.speak "Password Not Found Try Again" >> "temp%rn%.vbs"
start temp%rn%.vbs
timeout /t 2 /NoBreak>nul
del temp%rn%.vbs
pause
GoTo B

:JK 
echo  Input UserName
pause
Goto B


:UserLogedIn
Echo Welcome %un%

if exist temp%rn%.vbs goto UserLogedIn
echo ' > "temp%rn%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn%.vbs"
echo speech.speak "Hello %un%" >> "temp%rn%.vbs"
start temp%rn%.vbs
timeout /t 2 /NoBreak>nul
del temp%rn%.vbs
pause
Goto H

:J 
set  pass=NoEntry
set /p pass=Password:
Echo %un% >>nSFo.txt 
Echo %pass% >>nSFo.txt 
Echo  No UserFile Found...
pause
Echo Creat User?
set nu=NoEntry
Set /p nu=Yes,No?
if /i %nu%==yes Goto CreatUser Else
if /i %nu%==y Goto CreatUser Else
Echo Ok!
pause
cls
Goto B

:CreatUser
Echo Enter~
set /p user=Username:
set /p pass=Password:
Echo %un% >>nSF.txt 
Echo %pass% >>nSF.txt 
Goto B

pause 
Goto B

:C 
set rn3=%random%
Echo Welcome back.
if exist temp%rn3%.vbs goto C
echo ' > "temp%rn3%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn3%.vbs"
echo Set speech.Voice = speech.GetVoices.Item(1) >> "temp%rn3%.vbs"
echo speech.speak "welcome-Back-Deedz" >> "temp%rn3%.vbs"
start temp%rn3%.vbs
timeout /t 2 /NoBreak>nul
del temp%rn3%.vbs 
pause
set loc=t
SET /p loc=Destination:(Doom,Home,TTS)~: 
if /i %loc%==dd Goto dd 
if /i %loc%==doom Goto dd 
If /i %Loc%==tts Goto T2SI
if /i %loc%==h Goto H
if /i %loc%==home Goto H else

Goto D



:D
Echo Sorry that Destination does not exist try again
pause
Goto C

:DD 
cls
set rn7=%random%
if exist temp%rn7%.vbs goto DD 
echo ' > "temp%rn7%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn7%.vbs"
echo Set speech.Voice = speech.GetVoices.Item(1) >> "temp%rn7%.vbs"
echo speech.speak "DeedzDoom" >> "temp%rn7%.vbs"
start temp%rn7%.vbs
Echo ########    #########   #########   ########    #########
Echo #########   #########   #########   #########   #########
Echo  ###   ###  ###         ###          ###   ###        ###
Echo  ###   ###  #########   #########    ###   ###     ######
Echo  ###   ###  #########   #########    ###   ###  ######
Echo  ###   ###  ###         ###          ###   ###  ###
Echo #########   #########   #########   #########   #########
Echo #########   #########   #########   #########   ######### 
Echo.
Echo    #######       #####      #####    ######    #####
Echo    #########    #######    #######   ###############
Echo     ###   ###  ###   ###  ###   ###  ###   ###   ###
Echo     ###   ###  ###   ###  ###   ###  ###   ###   ###
Echo     ###   ###  ###   ###  ###   ###  ###   ###   ###
Echo     ###   ###  ###   ###  ###   ###  ###         ###
Echo    #########    #######    #######   ###         ###
Echo    #########     #####      #####    ###         ###
timeout /t 2 /NoBreak>nul 
del temp%rn7%.vbs
cd /
cd dd/deedzdoom
pause 
Start P15
Prompt $B$D Time:$T Lo$P$G
cmd /k

:H
cls
set rn8=%random%
if exist temp%rn8%.vbs goto DD 
echo ' > "temp%rn8%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%rn8%.vbs"
echo Set speech.Voice = speech.GetVoices.Item(1) >> "temp%rn8%.vbs"
echo speech.speak "DeedzHome" >> "temp%rn8%.vbs"
start temp%rn8%.vbs
Echo ########    #########   #########   ########    #########
Echo #########   #########   #########   #########   #########
Echo  ###   ###  ###         ###          ###   ###        ###
Echo  ###   ###  ######      ######       ###   ###     ######
Echo  ###   ###  ######      ######       ###   ###  ######
Echo  ###   ###  ###         ###          ###   ###  ###
Echo #########   #########   #########   #########   #########
Echo #########   #########   #########   #########   ######### 
Echo    ###   ###     #####      #####    #####   #########
Echo    ###   ###    #######    ###############   #########
Echo    ###   ###   ###   ###   ###   ###   ###   ###
Echo    #########   ###   ###   ###   ###   ###   #######
Echo    #########   ###   ###   ###   ###   ###   #######
Echo    ###   ###   ###   ###   ###         ###   ###
Echo    ###   ###    #######    ###         ###   #########
Echo    ###   ###     #####     ###         ###   #########
timeout /t 2 /NoBreak>nul 
del temp%rn8%.vbs
Echo Welcome to DeedzHome. What Would You like To Do?
pause
echo ~StartGame, Text2Speach, WASWS , DeedzDoom and More~
pause
:h2
set Hloc=NoEntry
Set /p Hloc=Input:
If /i %Hloc%==blender Goto Blen
If /i %Hloc%==paint Goto paint 
If /i %Hloc%==doom Goto DD
If /i %Hloc%==dd Goto DD
If /i %Hloc%==ml Goto MLStart
If /i %Hloc%==MissionLog Goto MLStart 
If /i %HLoc%==game GoTo G 
If /i %HLoc%==EditDD Start shell:startup & GoTo h2
If /i %HLoc%==StartGame GoTo G 
If /i %HLoc%==DeedzSite Start http://www.Deedz.org & GoTo H 
If /i %HLoc%==wasws Start http://www.warrenandsons.org & Goto H 
If /i %HLoc%==start Goto A
If /i %HLoc%==Text2Speach Goto T2SI
If /i %HLoc%==tts Goto T2SI
If /i %HLoc%==t2s Goto T2SI
If /i %HLoc%==more Goto H3
If /i %Hloc%==NoEntry Goto h2 else
Echo Sorry not available
Goto h2

:H3
Echo ~MissionLog[ml], EditDD, DeedzSite, Paint, Blender, Start
Goto h2

rem set values for tts
:T2SI
set txsp=NoEntry
set txspRate=1
set txspVolume=95


rem text to speach
:T2S
cd /
cd dd/deedzdoom
cls
echo ~What do you want the computer to Say?~
echo (use "-" as space-)(Exit[e],Rate[r],Volume[v],Save[SF],Open[o])
echo.
set /p txsp=Input:

if /i %txsp%==O Goto openttssf
if /i %txsp%==open Goto openttssf
if /i %txsp%==rate Goto TTsSetRate
if /i %txsp%==r Goto TTsSetRate
if /i %txsp%==save Goto :TTsSave
if /i %txsp%==s Goto :TTsSave
if /i %txsp%==volume Goto TTsSetVolume
if /i %txsp%==v Goto TTsSetVolume
if /i %txsp%==NoEntry Goto T2S
if /i %txsp%==e Goto H Goto H
if /i %txsp%==exit Goto H else 
Goto rtmp

:openttssf
cd /
cd dd/DeedzDoom
If exist C:\dd\Deedzdoom\SoundSave Start SoundSave else
Echo Directory Must Be Created First.
pause
Goto TTsmkdi


:TTsSetRate
echo What Would You Like The Rate of speach To Be.(Enter Int. Between -10 and 10)
set /p txspRate=Rate:
Goto T2S

:TTsSetVolume
echo What Would You Like The Volume of speach To Be.(Enter Int. Between 1 and 100)
set /p txspVolume=Volume:
Goto T2S

:TTsSave
cls
If exist C:\dd\Deedzdoom\SoundSave Goto TTsSave2 Else
Goto TTsmkdi

:TTsSave2
Echo ~Save Speech File~
echo What Would You Like The File Name to Be.("Exit" To Return Home)
set/p txspfn=FileName:
Echo What do you want the computer to Say?
set /p txsp=Input:
Goto TTsSF
else Goto TTsmkdi

rem makes save sound dir.
:TTsmkdi
Echo Creating Directory
cd /
cd dd/deedzdoom
md SoundSave
cd SoundSave
Goto TTsSave 

rem tts save file
:TTsSF
set num=%random%
if exist %txspfn%%num%.vbs goto num
echo ' > "%txspfn%%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%txspfn%%num%.vbs"
echo Set speech.Voice = speech.GetVoices.Item(1) >> "%txspfn%%num%.vbs"
echo speech.speak "%txsp%" >> "%txspfn%%num%.vbs"
echo speech.Volume = %txspVolume% >> "%txspfn%%num%.vbs"
echo speech.Rate = %txspRate% >> "%txspfn%%num%.vbs"
pause
set ttsSFyn=NoEntry
Echo File %txspfn% has been saved with the a suffix of %num%.
Echo Would you like to preveiw the sound?(Yes[y],No[n])
set /p ttsSFyn=Answer:
If /i %ttsSFyn%==yes GoTo TTsSFR 
If /i %ttsSFyn%==y GoTo TTsSFR
If /i %ttsSFyn%==no GoTo T2S 
If /i %ttsSFyn%==n GoTo T2S
If /i %ttsSFyn%==NoEntry GoTo T2S else
Goto H

rem tts save file repeater. 
:TTsSFR
set ttssfryn=NoEntry
Start %txspfn%%num%.vbs
Echo Would You Like Me to Repeat That? (Yes[y],No[n])
set /p ttssfryn=Answer:
If /i %ttssfryn%==yes GoTo TTsSFR 
If /i %ttssfryn%==y GoTo TTsSFR
If /i %ttssfryn%==no GoTo T2S 
If /i %ttssfryn%==n GoTo T2S
If /i %ttssfryn%==NoEntry GoTo TTsSFR else
Goto H



rem Making the temp file

:rtmp
set n1=%random%
if exist temp%n1%.vbs Goto rtmp else
echo ' > "temp%n1%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%n1%.vbs"
echo Set speech.Voice = speech.GetVoices.Item(1) >> "temp%n1%.vbs"
echo speech.Volume = %txspVolume% >> "temp%n1%.vbs"
echo speech.Rate = %txspRate% >> "temp%n1%.vbs"
echo speech.speak "%txsp%" >> "temp%n1%.vbs"
start temp%n1%.vbs
timeout /t 2 /NoBreak>nul
pause
del temp%n1%.vbs
goto T2S

:Blen
start blender
Goto H

:paint
start paint
Goto H

:G
Echo sorry not available yet
color 23
pause
Goto H

:MLStart
Echo DeedzML~
pause
Echo Type "read" to Review Ml
Echo Type "exit" to Return To DD
Goto ML

:ML
Title Deedz Mission Log
Echo Mission Log [Read,Exit]
set mlinput=NoEntry
set /p mlinput=Entry:
If /i %mlinput%==read type Ml.djvv & Goto ML
If /i %mlinput%==exit Goto DD 
If /i %mlinput%==NoEntry Goto Ml else

Echo %date% %time% %mlinput% >> Ml.djvv

Goto MlStart

 