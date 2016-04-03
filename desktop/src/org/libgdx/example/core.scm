(module-name org.libgdx.example.core)
(module-compile-options main: #t)

(import (class com.badlogic.gdx.backends.lwjgl LwjglApplication)
        (class org.libgdx.example MyGame))

(define (run) (LwjglApplication (MyGame) "Libgdx Example" 800 600))

(run)
