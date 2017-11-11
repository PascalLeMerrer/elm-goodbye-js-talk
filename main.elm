module Main exposing (main)

import Html exposing (..)


type alias Model =
    { characters : List String
    , selectedCharacter : String
    }


type Msg
    = Select String


initialModel : Model
initialModel =
    { characters = [ "Luke", "Leia", "Han" ]
    , selectedCharacter = ""
    }


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> Html Msg
view model =
    ul [] <|
        List.map viewItem model.characters


viewItem : String -> Html Msg
viewItem name =
    li [] [ text name ]


main =
    Html.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
