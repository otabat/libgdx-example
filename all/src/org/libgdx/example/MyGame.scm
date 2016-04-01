(import (class com.badlogic.gdx Game)
        (class org.libgdx.example MyScreen))

(define-simple-class org.libgdx.example.MyGame (Game)
  ((create)
   ((this):setScreen (MyScreen))))
