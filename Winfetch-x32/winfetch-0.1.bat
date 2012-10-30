@echo off
echo.
cd %MYFILES%
:main
for /f "tokens=6,8,10 delims= " %%A IN ('uptime') DO (set var=%%Ad %%Bh %%Cm)
set b=1
for /f "delims=" %%A IN ('systeminfo') do (call :do "%%A")
set osname=%v2r:~28%
set osvers=%v3r:~28%
for /f "delims=" %%A IN ('wmic desktopmonitor get screenheight') DO (call :set %%A height)
for /f "delims=" %%A IN ('wmic desktopmonitor get screenwidth') DO (call :set %%A width)
colous Writesec "[4]         ,.=:!!t3Z3z.,                [7]%userprofile:~9%[15]@[7]%COMPUTERNAME%""
colous Writesec "[4]        :tt:::tt333EE3                [7]OS: [15]%osname:~0,-1%"
colous Writesec "[4]        Et:::ztt33EEE  [2]@Ee.,      .., [7]OS version:[15] %osvers:~0,8%"
colous Writesec "[4]       ;tt:::tt333EE7 [2];EEEEEEttttt33# [7]Uptime: [15]%var%""
colous Writesec "[4]      :Et:::zt333EEQ. [2]SEEEEEttttt33QL [7]Shell: [15]MS-DOS"
colous Writesec "[4]      it::::tt333EEF [2]@EEEEEEttttt33F  [7]Resolution: [15] %width%x%height%"
colous Writesec "[4]     ;3=*^```'*4EEV [2]:EEEEEEttttt33@.  [7]Window Manager: [15]Windows Explorer"
colous Writesec "[1]     ,.=::::!t=., [4]` [2]@EEEEEEtttz33QF   "
colous Writesec "[1]    ;::::::::zt33)   [2]'4EEEtttji3P*    "
colous Writesec "[1]   :t::::::::tt33.[6]:Z3z..  [2]`` [6],..g.    "
colous Writesec "[1]   i::::::::zt33F [6]AEEEtttt::::ztF     "
colous Writesec "[1]  ;:::::::::t33V [6];EEEttttt::::t3      "
colous Writesec "[1]  E::::::::zt33L [6]@EEEtttt::::z3F      "
colous Writesec "[1] {3=*^```'*4E3) [6];EEEtttt:::::tZ`      "
colous Writesec "[1]             `[6] :EEEEtttt::::z7       "
colous Writesec "[1]                [6] 'VEzjt:;;z>*`       "
echo.
echo Taking screenshot in 5... 4... 3... 2... 1...
timeout /t 5 /nobreak > NUL
nircmd.exe savescreenshotfull c:/Screenshot/Screenshot-Winfetch%.png
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