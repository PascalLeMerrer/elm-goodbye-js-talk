module Main exposing (main)

import Html exposing (..)


initialModel =
    [ "Luke", "Leia", "Han" ]


view model =
    ul [] <|
        List.map viewItem model


viewItem name =
    li [] [ text name ]


main : Html msg
main =
    view initialModel
