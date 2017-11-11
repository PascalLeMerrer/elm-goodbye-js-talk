module Main exposing (main)

import Html exposing (..)


view =
    ul []
        [ li [] [ text "Luke" ]
        , li [] [ text "Leia" ]
        , li [] [ text "Han" ]
        ]


main : Html msg
main =
    view
