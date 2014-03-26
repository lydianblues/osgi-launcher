osgi-launcher
=============

This project demonstrates a few interesting features about working with OSGi. 

## Extract Apache Felix Launcher

Extracted the 'org.apache.felix.main.Main' and 'org.apache.felix.main.AutoProcessor'
classes from the Apache Felix distribution.  Two kinds of launcher bundles are created:
a standalone launcher and an embedded launcher.

## Embedded Launcher
This launcher is a bundle with the entire 'org.apache.felix.framework-4.3.0-SNAPSHOT.jar'
unzipped into the bundle.  It can be invoked with

```java
CLASSPATH=build/libs/launcher-embedded.jar
java -cp $CLASSPATH org.apache.felix.main.Main
```

