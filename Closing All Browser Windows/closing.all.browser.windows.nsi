!define APP_NAME find_close_terminate
 
Name "${APP_NAME}"
OutFile "${APP_NAME}.exe"

var hadBrowsers
Function closeAllBrowsers
	MessageBox MB_OK 'FindWindow IEFrame'
  FindWindow $0 "IEFrame"
  IntCmp $0 0 0 closeAll
  MessageBox MB_OK 'FindWindow MozillaUIWindowClass'
  FindWindow $0 "MozillaUIWindowClass"
  IntCmp $0 0 0 closeAll
  MessageBox MB_OK 'FindWindow Chrome_WidgetWin_0'
  FindWindow $0 "Chrome_WidgetWin_0"
  IntCmp $0 0 done closeAll
  closeAll:
  MessageBox MB_OK "Please close your browsers or press ok to close them all automatically"
  ;Closing all IE Windows
  loop:
    FindWindow $0 "IEFrame"
    IntCmp $0 0 skipIE
    IsWindow $0 0 skipIE
	MessageBox MB_OK 'Call IE'
    System::Call 'user32::PostMessageA(i,i,i,i) i($0,${WM_CLOSE},0,0)'
    StrCpy $hadBrowsers "1"
    
	skipIE:
    FindWindow $0 "MozillaUIWindowClass"
    IntCmp $0 0 skipFF
    IsWindow $0 0 skipFF
    MessageBox MB_OK 'Call IE'
	System::Call 'user32::PostMessageA(i,i,i,i) i($0,${WM_CLOSE},0,0)'
    StrCpy $hadBrowsers "1"
	
    skipFF:
    FindWindow $0 "Chrome_WidgetWin_0"
    IntCmp $0 0 skipGC
    IsWindow $0 0 skipGC
    MessageBox MB_OK 'Call IE'
	System::Call 'user32::PostMessageA(i,i,i,i) i($0,${WM_CLOSE},0,0)'
    StrCpy $hadBrowsers "1"        
    
	skipGC:
    MessageBox MB_OK 'Find IE'
	FindWindow $0 "IEFrame"
    IntCmp $0 0 0 wait
    MessageBox MB_OK 'Find Mozilla'
	FindWindow $0 "MozillaUIWindowClass"
    IntCmp $0 0 0 wait
    MessageBox MB_OK 'Find Chrome'
	FindWindow $0 "Chrome_WidgetWin_0"
    IntCmp $0 0 done wait
	
  wait:
	MessageBox MB_OK 'Sleep 100'
    Sleep 100
    goto loop
  done:
  MessageBox MB_OK $hadBrowsers
  StrCmp $hadBrowsers "1" 0 +1        
    Sleep 2000
FunctionEnd

 
Section "Dummy Section" SecDummy
 
	Call closeAllBrowsers
 
SectionEnd