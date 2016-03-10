!define APP_NAME find_close_terminate
!define WND_CLASS "Outlook Express Browser Class"
!define WND_TITLE "Outlook Express"
!define TO_MS 2000
!define SYNC_TERM 0x00100001
 
!include WinMessages.nsh
 
Name "${APP_NAME}"
OutFile "${APP_NAME}.exe"
 
 
LangString termMsg ${LANG_ENGLISH} "Installer cannot stop running ${WND_TITLE}.$\nDo you want to terminate process?"
LangString stopMsg ${LANG_ENGLISH} "Stopping ${WND_TITLE} Application"
 
!macro TerminateApp
 
    Push $0 ; window handle
    Push $1
    Push $2 ; process handle
    DetailPrint "$(stopMsg)"
    FindWindow $0 '${WND_CLASS}' ''
    IntCmp $0 0 done
    System::Call 'user32.dll::GetWindowThreadProcessId(i r0, *i .r1) i .r2'
    System::Call 'kernel32.dll::OpenProcess(i ${SYNC_TERM}, i 0, i r1) i .r2'
    SendMessage $0 ${WM_CLOSE} 0 0 /TIMEOUT=${TO_MS}
    System::Call 'kernel32.dll::WaitForSingleObject(i r2, i ${TO_MS}) i .r1'
    IntCmp $1 0 close
    MessageBox MB_YESNOCANCEL|MB_ICONEXCLAMATION "$(termMsg)" /SD IDYES IDYES terminate IDNO close
    System::Call 'kernel32.dll::CloseHandle(i r2) i .r1'
    Quit
  terminate:
    System::Call 'kernel32.dll::TerminateProcess(i r2, i 0) i .r1'
  close:
    System::Call 'kernel32.dll::CloseHandle(i r2) i .r1'
  done:
    Pop $2
    Pop $1
    Pop $0
 
!macroend
 
 
Section "Dummy Section" SecDummy
 
!insertmacro TerminateApp
 
SectionEnd