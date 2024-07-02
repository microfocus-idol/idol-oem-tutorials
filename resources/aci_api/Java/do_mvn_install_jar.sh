#!/bin/sh

VERSION=24.3.0

ACI_API_HOME=../../../../IDOLJavaSDK_$VERSION
MAVEN_HOME=/opt/Apache/maven/apache-maven-3.8.3
JAVA_HOME=/opt/OpenLogic/openlogic-openjdk-11.0.17+8-linux-x64

PATH=$MAVEN_HOME/bin:$JAVA_HOME/bin:$PATH
export JAVA_HOME
export PATH


env

mvn install:install-file -Dfile=$ACI_API_HOME/aci-api-release-$VERSION.jar -DgroupId=com.autonomy.aci -DartifactId=aci-api-release -Dversion=$VERSION -Dpackaging=jar -DgeneratePom=true
