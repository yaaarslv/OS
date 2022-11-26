net share NetTemp=%~dp0temp
net use * \\%computername%\NetTemp


forfiles /P "C:\Windows" /C "cmd /c if @fsize GEQ 2097152 copy @path \\%computername%\NetTemp /Z"


SCHTASKS /Create /SC MINUTE /TN Copier /TR "%~dp0copier.bat"


SCHTASKS /Delete /TN Copier


forfiles /P "C:\Windows" /C "cmd /c if @fsize GEQ 2097152 copy @path \\%computername%\NetTemp /Z"