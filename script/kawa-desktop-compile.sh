#!/bin/sh

PROJECT_HOME=$KAWA_WORKSPACE_HOME/libgdx-example


cd $PROJECT_HOME/all/src
java \
 -Dfile.encoding=UTF-8 \
 -cp $KAWA_JAR:$PROJECT_HOME/all/assets:$PROJECT_HOME/all/libs/gdx-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-backend-lwjgl-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-platform-1.9.2-natives-desktop.jar:$PROJECT_HOME/desktop/build/classes kawa.repl \
 -d $PROJECT_HOME/desktop/build/classes/ \
 --warn-as-error \
 --target 7 \
 -C org/libgdx/example/MyScreen.scm


cd $PROJECT_HOME/all/src
java \
 -Dfile.encoding=UTF-8 \
 -cp $KAWA_JAR:$PROJECT_HOME/all/assets:$PROJECT_HOME/all/libs/gdx-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-backend-lwjgl-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-platform-1.9.2-natives-desktop.jar:$PROJECT_HOME/desktop/build/classes kawa.repl \
 -d $PROJECT_HOME/desktop/build/classes/ \
 --warn-as-error \
 --target 7 \
 -C org/libgdx/example/MyGame.scm

cd $PROJECT_HOME/desktop/src
java \
 -Dfile.encoding=UTF-8 \
 -cp $KAWA_JAR:$PROJECT_HOME/all/assets:$PROJECT_HOME/all/libs/gdx-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-backend-lwjgl-1.9.2.jar:$PROJECT_HOME/all/libs/gdx-platform-1.9.2-natives-desktop.jar:$PROJECT_HOME/desktop/libs/lwjgl-2.9.2.jar:$PROJECT_HOME/desktop/libs/lwjgl_util-2.9.2.jar:$PROJECT_HOME/desktop/libs/lwjgl-platform-2.9.3-natives-osx.jar:$PROJECT_HOME/all/build/classes:$PROJECT_HOME/desktop/build/classes kawa.repl \
 -d $PROJECT_HOME/desktop/build/classes/ \
 --warn-as-error \
 --no-warn-unused \
 --target 7 \
 -C org/libgdx/example/core.scm
