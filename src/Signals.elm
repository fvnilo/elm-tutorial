module Main (..) where

import Html
import Mouse


view : Int -> Html.Html
view x =
  Html.text (toString x)


double x =
  x * 2

doubleSignal signal =
  Signal.map double signal

{-- Print out the x position of the mouse times 2 because always useful --}
main : Signal.Signal Html.Html
main =
  Signal.map view  (doubleSignal Mouse.x)
