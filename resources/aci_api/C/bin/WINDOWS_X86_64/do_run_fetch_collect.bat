set ACI_API_HOME=..\..\..\..\..\..\IDOLCSDK_23.3.0_WINDOWS_X86_64
set PATH=%ACI_API_HOME%;%PATH%

rem Replace the values for the following 3 parameters for your environment
set ACI_HOST=localhost
set ACI_PORT=7010
set IDENTIFIERS_CSV=CSV_OF_IDENTIFIERS
set DESTINATION_FOLDER=./collect

set ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=REPLACE_WITH_MY_LONG_KEY_STRING
rem set ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=

fetch_collect.exe %ACI_HOST% %ACI_PORT% "%IDENTIFIERS_CSV%" "%DESTINATION_FOLDER%"
