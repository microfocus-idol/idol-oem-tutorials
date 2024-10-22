#!/bin/sh

ACI_API_HOME=../../../../../../IDOLCSDK_24.4.0_LINUX_X86_64
ACI_API_LIB=$ACI_API_HOME

LD_LIBRARY_PATH=$ACI_API_HOME
export LD_LIBRARY_PATH

# Replace the values for the following 3 parameters for your environment
ACI_HOST=localhost
ACI_PORT=14000
CONFIG_NAME=REPLACE_WITH_CONFIG_NAME
SOURCE_FILE_PATH=REPLACE_WITH_SOURCE_FILE_PATH

ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=REPLACE_WITH_MY_LONG_KEY_STRING
#ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=

./ms_process.exe $ACI_HOST $ACI_PORT $CONFIG_NAME "$SOURCE_FILE_PATH"
