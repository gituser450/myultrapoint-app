!macro customInstall
  DetailPrint "Register ultrapoint URI Handler"
  DeleteRegKey HKCR "ultrapoint"
  WriteRegStr HKCR "ultrapoint" "" "URL:ultrapoint"
  WriteRegStr HKCR "ultrapoint" "URL Protocol" ""
  WriteRegStr HKCR "ultrapoint\DefaultIcon" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  WriteRegStr HKCR "ultrapoint\shell" "" ""
  WriteRegStr HKCR "ultrapoint\shell\Open" "" ""
  WriteRegStr HKCR "ultrapoint\shell\Open\command" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME} %1"
!macroend