module Main exposing (main)

import Html exposing (..)


type alias Model =
    { characters : List String
    , selectedCharacter : String
    }


initialModel : Model
initialModel =
    { characters = [ "Luke", "Leia", "Han" ]
    , selectedCharacter = ""
    }


view : Model -> Html msg
view model =
    ul [] <|
        List.map viewItem model.characters


viewItem : String -> Html msg
viewItem name =
    li [] [ text name ]


main : Html msg
main =
    view initialModel
