set ACI_API_HOME=..\..\..\..\..\..\IDOLDOTNETSDK_23.3.0_WINDOWS_X86_64
set PATH=%ACI_API_HOME%;%PATH%

rem Replace the values for the following parameters for your environment
set ACI_HOST=localhost
set ACI_PORT=14000
set CONFIG_NAME=REPLACE_WITH_CONFIG_NAME
set SOURCE_FILE_PATH=REPLACE_WITH_SOURCE_FILE_PATH

set ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=REPLACE_WITH_MY_LONG_KEY_STRING
rem set ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=

fetchInsert.exe %ACI_HOST% %ACI_PORT% %CONFIG_NAME% "%SOURCE_FILE_PATH%"
