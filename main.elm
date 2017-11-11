module Main exposing (main)

import Html exposing (..)


initialModel =
    [ "Luke", "Leia", "Han" ]


view =
    ul []
        (List.map viewItem initialModel)


viewItem name =
    li [] [ text name ]


main : Html msg
main =
    view
