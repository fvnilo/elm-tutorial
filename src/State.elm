module Main (..) where

import Html
import Mouse


view : Int -> Html.Html
view count =
  Html.text (toString count)


countSignal : Signal Int
countSignal =
  Signal.foldp (\_ state -> state + 1) 0 Mouse.clicks
-- The \x y ->> x + y syntax is for anonymous functions.

main : Signal.Signal Html.Html
main =
  Signal.map view countSignal
