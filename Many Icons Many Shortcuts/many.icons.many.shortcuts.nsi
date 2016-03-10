Section "Start Menu Shortcuts"
 
CreateDirectory "$SMPROGRAMS\PrositeXL"
CreateShortCut "$SMPROGRAMS\PrositeXL\Uninstall.lnk" "$INSTDIR\uninstall.exe" \
"" "$INSTDIR\uninstall.exe" 0
CreateDirectory "$SMPROGRAMS\PrositeXL\PHP"
CreateShortCut "$SMPROGRAMS\PrositeXL\PHP\Php Dir.lnk"\
"$INSTDIR\" "" "" 0 SW_SHOWMAXIMIZED CONTROL|SHIFT|Z
CreateShortCut "$SMPROGRAMS\PrositeXL\PHP\PHP.ini.lnk"\
"$WINDIR\php.ini" "" "$WINDIR\php.ini" 0
CreateDirectory "$SMPROGRAMS\PrositeXL\AnalogX"
CreateShortCut "$SMPROGRAMS\PrositeXL\AnalogX\AnalogX.lnk"\
"$INSTDIR\AnalogX\phpconf.exe" "" "$INSTDIR\AnalogX\phpconf.exe" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\AnalogX\AnalogX Website.lnk"\
"$INSTDIR\AnalogX\AnalogX Website.URL" "" "$INSTDIR\AnalogX\AnalogX Website.URL" 0
CreateDirectory "$SMPROGRAMS\PrositeXL\MySQL-Front"
CreateShortCut "$SMPROGRAMS\PrositeXL\MySQL-Front\MySQL-Front 2.5.lnk"\
"$INSTDIR\MySQL-Front\mysqlfront.exe" "" "$INSTDIR\MySQL-Front\mysqlfront.exe" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\MySQL-Front\MySQL-Front Website.lnk"\
"$INSTDIR\MySQL-Front\mysqlfront.URL" "" "$INSTDIR\MySQL-Front\mysqlfront.URL" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\MySQL-Front\MySQL-Front FAQ.lnk"\
"$INSTDIR\MySQL-Front\faq.URL" "" "$INSTDIR\MySQL-Front\faq.URL" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\MySQL-Front\MySQL-Front Readme.lnk"\
"$INSTDIR\MySQL-Front\readme.txt" "" "$INSTDIR\MySQL-Front\readme.txt" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\MySQL-Front\MySQL-Front Donate.lnk"\
"$INSTDIR\MySQL-Front\donate.URL" "" "$INSTDIR\MySQL-Front\donate.URL" 0
CreateDirectory "$SMPROGRAMS\PrositeXL\SamSpade"
CreateShortCut "$SMPROGRAMS\PrositeXL\SamSpade\SamSpade.lnk"\
"$INSTDIR\SamSpade\spade.exe" "" "$INSTDIR\SamSpade\spade.exe" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\SamSpade\SamSpade Help-1.lnk"\
"$INSTDIR\SamSpade\spade.chm" "" "$INSTDIR\SamSpade\spade.chm" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\SamSpade\SamSpade Help-2.lnk"\
"$INSTDIR\SamSpade\spade.hlp" "" "$INSTDIR\SamSpade\spade.hlp" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\SamSpade\SamSpade Readme.lnk"\
"$INSTDIR\SamSpade\readme.txt" "" "$INSTDIR\SamSpade\readme.txt" 0
CreateDirectory "$SMPROGRAMS\PrositeXL\Apache1.3"
 
CreateShortCut "$SMPROGRAMS\PrositeXL\Apache1.3\Apache1.3.lnk" "$INSTDIR\Apache\Apache.exe"\
"" "$INSTDIR\Apache\Apache.exe" 0
 
;CreateShortCut "$SMPROGRAMS\PrositeXL\Apache1.3\Edit the Apache httpd.conf Configuration File.lnk"\
"$INSTDIR\Apache\conf\httpd.conf" "" "$INSTDIR\Apache\Apache.exe" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\Apache1.3\Edit the Apache httpd.conf Configuration File.lnk"\
"$INSTDIR\Apache\conf\httpd.conf" "" "$WINDIR\System32\SHELL32.dll" 206
 
CreateShortCut \
"$SMPROGRAMS\PrositeXL\Apache1.3\Test Configuration.lnk" \
"$INSTDIR\Apache\Apache.exe" \
`-w -t -f "$INSTDIR\Apache\conf\httpd.conf" \
-d "$INSTDIR\Apache\" ` \
"$INSTDIR\Apache\Apache.exe\" \
0
 
; Special Create Shortcut
CreateShortCut \
"$SMPROGRAMS\PrositeXL\Apache1.3\Restart Service.lnk" \
"$INSTDIR\Apache\Apache.exe" \
`-w -n "Apache" -k restart` \
"$INSTDIR\Apache\Apache.exe" \
0
 
CreateShortCut \
"$SMPROGRAMS\PrositeXL\Apache1.3\Start Service.lnk" \
"$INSTDIR\Apache\Apache.exe" \
`-w -n "Apache" -k start` \
"$INSTDIR\Apache\Apache.exe" \
0
 
CreateShortCut \
"$SMPROGRAMS\PrositeXL\Apache1.3\Stop Service.lnk" \
"$INSTDIR\Apache\Apache.exe" \
`-w -n "Apache" -k stop` \
"$INSTDIR\Apache\Apache.exe" \
0
 
CreateShortCut "$SMPROGRAMS\PrositeXL\Apache1.3\Install Apache Service.lnk"\
"$INSTDIR\apachesrvin.bat" "" "$INSTDIR\Apache\Apache.exe" 0
CreateShortCut "$SMPROGRAMS\PrositeXL\Apache1.3\Remove Apache Service.lnk"\
"$INSTDIR\apachesrvout.bat" "" "$INSTDIR\Apache\Apache.exe" 0
 
;###### Nice Free ICON file to use on WindowsXP and Higher
;C:\WINDOWS\system32\SHELL32.dll icon 29 or 45 or 
;153 help icon 165 Gear 175 Help2  176 start arrow  177 DVD 189 Red PCMIA 192Grey laptop Modem
;193 CoolBlue Squre 192 Cellphone 194 ZipDisk 195 Camera 197 Internet Printer 
;200 PalmPiolet 201 scanner  203 DV Cammera 207 Checknote 208 Little Star
;209 Small Search Glass 210 SmallQuestion 211 KeyBlock 213 Timenote 214 FastProgram
;215 StopBlock 216 SmallNoteCheck 217 UpBlock 218 Search Directory 
;219 No 220 time DIR remove 222 Information 224 System check Red
;225 Question Note Small 226 Note GO 227 Printer/Paper 228 Paper RedCheck
;229 Printer Pause 230 Go Printer 231 Printer Shared 232 Fax 233 Monitor
;###### Nice Free ICON file Part 2#  to use on WindowsXP and Higher
;C:\WINDOWS\system32\wininet.dll
;1 Cookie 2 Lock information 3 Lock Warning 4 Lock Question
;5 Secure internet Key 10 Security Note 11 Security Note High Color
 
;C:\WINDOWS\system32\accwiz.exe
;1 Handy cap Wizzard
 
;C:\WINDOWS\system32\progman.exe
;24 Swiss Army Knife 27 News 28 Phone 30 Calc Chart pen
; 31 Postit 32 Cassete Tape 33 Type writer 34 Suitcase 35 Door
; 36 manilla folder 37 Mailbox 38 safe 39 Question 40 Exclamation
; 41 go in Door 42 hand point left 43 hand point right 44 hand stop
 
;C:\WINDOWS\explorer.exe
;0 MyComputer 1 search folder 3 Desktop 5 Startmenu 6 recyclebin
; 14 internet glode 15 open email 
 
;C:\windows\system32\cdfview.dll
;4 Blue book Open 5 Blue book closed 6 satalite folder
;C:\windows\system32\certmgr.dll
;0 Certificate 8 Secured Data
 
;C:\windows\system32\compstui.dll
; 66 Tools 72 Tools Drive 73 Defrag
 
;C:\windows\system32\dmdskres.dll
;0 Tools plugins
 
;Many more icosn exsist in
; these files 
;C:\windows\system32\pifmgr.dll
;C:\windows\system32\wmploc.dll
;C:\windows\system32\moricons.dll
 
;Icon file (Windows Vista and higher):
;C:\windows\system32\imageres.dll
SectionEnd