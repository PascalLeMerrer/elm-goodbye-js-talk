module Main exposing (main)

import Html exposing (..)


initialModel : List String
initialModel =
    [ "Luke", "Leia", "Han" ]


view : List String -> Html msg
view model =
    ul [] <|
        List.map viewItem model


viewItem : String -> Html msg
viewItem name =
    li [] [ text name ]


main : Html msg
main =
    view initialModel
