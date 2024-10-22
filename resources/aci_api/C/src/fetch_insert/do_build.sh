#!/bin/sh

ACI_API_HOME=../../../../../../IDOLCSDK_24.4.0_LINUX_X86_64
ACI_API_INCLUDE=$ACI_API_HOME
ACI_API_LIB=$ACI_API_HOME

PLATFORM=LINUX_X86_64
PROGRAM=fetch_insert
EXE=$PROGRAM.exe

rm $EXE
gcc --verbose $PROGRAM.c -I $ACI_API_INCLUDE -L $ACI_API_LIB -laciClient -o $EXE

mv $EXE ../../bin/$PLATFORM
