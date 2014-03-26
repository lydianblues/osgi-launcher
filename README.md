osgi-launcher
=============

This project demonstrates a few interesting features about working with OSGi. 

## Apache Felix Launcher
Extracted the *org.apache.felix.main.Main* and *org.apache.felix.main.AutoProcessor*
classes from the Apache Felix source distribution.  Two kinds of launcher bundles are created:
an external launcher (*launcher-external.jar*) and an embedded 
launcher (*launcher-embedded.jar*).

## Embedded Launcher
This launcher is a bundle with the entire *org.apache.felix.framework-4.3.0-SNAPSHOT.jar*
(in expanded form) unzipped into the bundle.  It can be invoked with

```shell
CLASSPATH=build/libs/launcher-embedded.jar
java -cp $CLASSPATH org.apache.felix.main.Main
```

## External Launcher
This launcher keeps the Apache Felix framework code in a separate bundle.  Thus, the *launcher*
bundle is tiny (it only has two classes).  It can be invoked with

```shell
FRAMEWORK=lib/org.apache.felix.framework-4.3.0-SNAPSHOT.jar
LAUNCHER=build/libs/launcher-external.jar
CLASSPATH=$FRAMEWORK:$LAUNCHER
java -cp $CLASSPATH org.apache.felix.main.Main
```
## Using the Launchers
In either case, a directory that is a subdirectory of the current directory
called *conf* should be present, with a file called "config.properties".  This file
is also from the Apache Felix distribution.  This file is extensively commented with
for all configuration options.

In the default case, a subdirectory of the current directory called *bundle* contains
all the bundles that should be loaded by the launcher.

## Artifactory Repository
A local Artifactory repository is used (see the *build.gradle*) script.  This repository
has been preconfigured with many bundles built from the Apache Felix source 
distribution.  The Repository also contains the *BND* bundle: *biz.aQute.bnd:biz.aQute.bnd*.

## Gradle Buildscript
The most interesting feature of the Gradle buildscript is that it invokes *BND* directly
via an *ant* task.  Thus, we can use external *BND* files to be compatible with the 
mechanism used by the *Bndtools* Eclipse plugin. 

