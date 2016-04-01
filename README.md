# libGDX Example for Kawa Scheme

An example project for building a libGDX desktop and Android game application using Kawa Scheme on Mac OS X.  
The example includes:

* A simple game and screen application written in Kawa Scheme
* A script for compiling Kawa scm files to class files.
* A script for building a standalone JAR file for desktop applications
* A script for building and running a debug build for Android applications

## Project Requirements
---
* Gradle
  * Tested with 2.12
* JDK
  * 1.7.x is required to build Kawa Scheme
  * Executing gradle tasks with 1.8.x should be fine
* Kawa Scheme
  * Tested with 2.1
  * Build Kawa Scheme from sources
    * Download [Kawa source code](https://www.gnu.org/software/kawa/Getting-Kawa.html)
    * Build using JDK 1.7  
      `
      ./configure --disable-xquery --disable-jemacs
      `  
      `
      make
      `
* Android SDK
  * Android SDK Tools 24.4.1 and Android SDK Build-toos 23.0.2 (modify the *buildToolsVersion* in android/build.gradle for different versions)
* Shell environment variables
  * Set *$KAWA_JAR* to the path of the Kawa Scheme JAR file  
    `
    export KAWA_JAR=/home/kawa/bin/kawa.jar
    `
  * Set *$KAWA_WORKSPACE_HOME* to the parent directory of the project root  
    `
    export KAWA_WORKSPACE_HOME=/home/kawa/workspace
    `
  * Set *$ANDROID_HOME* to the root path of the Android SDK  
    `
    export ANDROID_HOME=/home/Library/Android/sdk
    `
    
## Gradle Tasks
---
* Desktop applications
  * Compile Scheme files and generate class files  
    `
    gradle desktop:compile
    `
  * Build a standalone JAR file  
    `
    gradle desktop:uberJar
    `
  * Run desktop application  
    `
    gradle desktop:run
    `
  * All in one  
    `
    gradle desktop:uberJar desktop:run 
    `
* Android applications
  * Compile Scheme files and generate class files  
    `
    gradle android:compile
    `
  * Compile Scheme files and zip into a JAR file  
    `
    gradle android:kawaJar
    ` 
  * Build the Android debug APK file and install  
    `
    gradle android:installDebug
    `
  * Run Android appliation  
    `
    gradle android:run
    `
  * All in one  
    `
    gradle android:kawaJar android:installDebug android:run
    `
  
## License
---

Copyright © 2016 Tatsuya Tsuda

Distributed under the [Apache 2 License](http://www.apache.org/licenses/LICENSE-2.0.html).
