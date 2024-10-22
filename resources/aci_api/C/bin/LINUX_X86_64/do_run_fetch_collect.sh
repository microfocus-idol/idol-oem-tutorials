#!/bin/sh

ACI_API_HOME=../../../../../../IDOLCSDK_24.4.0_LINUX_X86_64
ACI_API_LIB=$ACI_API_HOME

LD_LIBRARY_PATH=$ACI_API_HOME
export LD_LIBRARY_PATH

# Replace the values for the following parameters for your environment
ACI_HOSTNAME=localhost
ACI_PORT=7010
IDENTIFIERS_CSV=CSV_OF_IDENTIFIERS
DESTINATION_FOLDER=./collect

ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY=REPLACE_WITH_MY_LONG_KEY_STRING
#export ACI_API_TUTORIAL_PROGRAM_ENCRYPTION_KEY

./fetch_collect.exe $ACI_HOSTNAME $ACI_PORT "$IDENTIFIERS_CSV" "$DESTINATION_FOLDER"

