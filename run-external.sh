#!/bin/bash
FRAMEWORK=lib/org.apache.felix.framework-4.3.0-SNAPSHOT.jar
LAUNCHER=build/libs/launcher-external.jar
CLASSPATH=$FRAMEWORK:$LAUNCHER
java -cp $CLASSPATH org.apache.felix.main.Main
