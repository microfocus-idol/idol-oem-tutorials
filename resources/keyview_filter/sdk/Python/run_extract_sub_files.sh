#/bin/sh

VERSION=25.1.0
PLATFORM=LINUX_X86_64

KEYVIEW_FILTERSDK_HOME=/opt/OpenText/KeyviewFilterSDK_${VERSION}_${PLATFORM}
KEYVIEW_EXPORTSDK_HOME=/opt/OpenText/KeyviewExportSDK_${VERSION}_${PLATFORM}
IDOL_OEM_TUTORIALS_HOME=/opt/OpenText/idol-oem-tutorials

KV_SAMPLE_PROGRAM_LICENSE_FROM_FILEPATH=${KEYVIEW_FILTERSDK_HOME}/licensekey.dat
export KV_SAMPLE_PROGRAM_LICENSE_FROM_FILEPATH

INPUT_FILEPATH=${KEYVIEW_FILTERSDK_HOME}/javaapi/KeyView.jar
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/Annual_Report.docx
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/freezer2.ppt
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/FreshDinner.doc
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/frshfrozen.xls
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/Investment_Portfolio.xlsx
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/Report_Template.pdf
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/Onboarding.msg
#INPUT_FILEPATH=${KEYVIEW_EXPORTSDK_HOME}/testdocs/SquaresTemplate.zip

OUTPUT_ROOT_PATH=${IDOL_OEM_TUTORIALS_HOME}/_WORK/output
mkdir ${OUTPUT_ROOT_PATH}

LOG=extract_sub_files.LOG

#RECURSE=--recurse

python extract_sub_files.py "${KEYVIEW_FILTERSDK_HOME}/${PLATFORM}/bin" "${INPUT_FILEPATH}" "${OUTPUT_ROOT_PATH}" ${RECURSE}
