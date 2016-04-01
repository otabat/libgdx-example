#!/bin/sh

PROJECT_HOME=$KAWA_WORKSPACE_HOME/libgdx-example

cd $PROJECT_HOME/all/src
java \
 -Dfile.encoding=UTF-8 \
 -cp $KAWA_JAR:$PROJECT_HOME/all/assets:$PROJECT_HOME/all/libs/gdx-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-backend-lwjgl-1.9.2.jar:$PROJECT_HOME/android/build/classes kawa.repl \
 -d $PROJECT_HOME/android/build/classes/ \
 --warn-as-error \
 --target 7 \
 -C org/libgdx/example/MyScreen.scm

cd $PROJECT_HOME/all/src
java \
 -Dfile.encoding=UTF-8 \
 -cp $KAWA_JAR:$PROJECT_HOME/all/assets:$PROJECT_HOME/all/libs/gdx-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-backend-lwjgl-1.9.2.jar:$PROJECT_HOME/android/build/classes kawa.repl \
 -d $PROJECT_HOME/android/build/classes/ \
 --warn-as-error \
 --target 7 \
 -C org/libgdx/example/MyGame.scm
