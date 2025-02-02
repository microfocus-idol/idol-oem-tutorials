set VERSION=25.1.0
set PLATFORM=WINDOWS_X86_64

set KEYVIEW_FILTERSDK_HOME=C:\OpenText\KeyViewFilterSDK_%VERSION%_%PLATFORM%
set KEYVIEW_EXPORTSDK_HOME=C:\OpenText\KeyViewExportSDK_%VERSION%_%PLATFORM%
set IDOL_OEM_TUTORIALS_HOME=C:\OpenText\idol-oem-tutorials

set KV_SAMPLE_PROGRAM_LICENSE_FROM_FILEPATH=%KEYVIEW_FILTERSDK_HOME%\licensekey.dat

set STARTING_DIR=%IDOL_OEM_TUTORIALS_HOME%\resources\keyview_filter

set OUTPUT_ROOT_PATH=%IDOL_OEM_TUTORIALS_HOME%\_WORK\output
mkdir %OUTPUT_ROOT_PATH%

set LOG=extract_metadata_text_folder.LOG

python extract_metadata_text_folder.py "%KEYVIEW_FILTERSDK_HOME%\%PLATFORM%\bin" "%STARTING_DIR%" "%OUTPUT_ROOT_PATH%" > %LOG%
