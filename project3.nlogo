to setup
  clear-all
  create-turtles 1 [
    set color red
    set size 2
    pen-up ;
  ]
  reset-ticks
end

to go
  if mouse-inside? [
    ask turtles [
      facexy mouse-xcor mouse-ycor
      if distancexy mouse-xcor mouse-ycor > 1 [
        forward 1
      ]

      if mouse-down? [
        set color one-of [red blue green yellow cyan magenta orange] ;
        pen-down
      ]
      if not mouse-down? [
        pen-up
      ]
    ]
  ]
  tick
end

