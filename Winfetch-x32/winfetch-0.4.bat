@echo off
echo.
cd %MYFILES%
:main
for /f "tokens=6,8,10 delims= " %%A IN ('uptime') DO (set var=%%Ad %%Bh %%Cm)
set b=1
for /f "delims=" %%A IN ('systeminfo') do (call :do "%%A")
set osname=%v2r:~28%
set osvers=%v3r:~28%
set ram=%v24r:~28%
set bios=%v17r:~28%
set arch=%v14r:~28%
set mobo=%v12r:~28%
set mobomodel=%v13r:~28%
set cpu=%v16r:~28%
for /f "delims=" %%A IN ('wmic desktopmonitor get screenheight') DO (call :set %%A height)
for /f "delims=" %%A IN ('wmic desktopmonitor get screenwidth') DO (call :set %%A width)

colous Writesec "[12]         ,.=:!!t3Z3z.,                [7]%userprofile:~9%[15]@[7]%COMPUTERNAME%""
colous Writesec "[12]        :tt:::tt333EE3                [7]OS: [15]%osname:~0,-1%"
colous Writesec "[12]        Et:::ztt33EEE  [26]@Ee.,      .., [7]OS version:[15] %osvers:~0,8%"
colous Writesec "[12]       ;tt:::tt333EE7 [26];EEEEEEttttt33# [7]Uptime: [15]%var%""
colous Writesec "[12]      :Et:::zt333EEQ. [26]SEEEEEttttt33QL [7]Shell: [15]CMD.exe"
colous Writesec "[12]      it::::tt333EEF [26]@EEEEEEttttt33F  [7]Resolution: [15] %width%x%height%"
colous Writesec "[12]     ;3=*^```'*4EEV [26]:EEEEEEttttt33@.  [7]Desktop Environment: [15]Windows Explorer"
colous Writesec "[9]     ,.=::::!t=., [12]` [26]@EEEEEEtttz33QF   [7]Memory: [15] %ram:~0,5% MB"
colous Writesec "[9]    ;::::::::zt33)   [26]'4EEEtttji3P*    [7]BIOS: [15] %bios:~0,30%"
colous Writesec "[9]   :t::::::::tt33.[14]:Z3z..  [26]`` [14],..g.    [7]Architecture: [15] %arch:~0,-1%"
colous Writesec "[9]   i::::::::zt33F [14]AEEEtttt::::ztF     [7]MoBo: [15]%mobo:~0,-1% %mobomodel:~0,-1%"
colous Writesec "[9]  ;:::::::::t33V [14];EEEttttt::::t3      [7]CPU: [15]%cpu:~0,30%"
colous Writesec "[9]  E::::::::zt33L [14]@EEEtttt::::z3F      "
colous Writesec "[9] {3=*^```'*4E3) [14];EEEtttt:::::tZ`      "
colous Writesec "[9]             `[14] :EEEEtttt::::z7       "
colous Writesec "[9]                [14] 'VEzjt:;;z>*`       "
echo.

Set /P var=Taking screenshot in 5... <NUL
timeout /t 1 /nobreak > NUL
Set /P var=4... <NUL
timeout /t 1 /nobreak > NUL
Set /P var=3... <NUL 
timeout /t 1 /nobreak > NUL
Set /P var=2... <NUL
timeout /t 1 /nobreak > NUL
Set /P var=1... <NUL
nircmd.exe savescreenshotfull "C:\Users\Jonathon\Screenshot-Winfetch-~$currdate.MM-dd-yy$-~$currtime.HHmm$.png"
set var=
set vr=
set b=
goto :EOF

:set
if not "%~1" == "" (2>nul set %~2=%1)
goto :EOF

:do
set v%b%r="%~1"
set /a b=%b%+1
goto :EOF