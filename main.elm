module Main exposing (main)

import Html exposing (..)
import Html.Events exposing (onClick)


type alias Model =
    { characters : List String
    , selectedCharacter : String
    }


type Msg
    = Select String
    | Unselect


initialModel : Model
initialModel =
    { characters = [ "Luke", "Leia", "Han" ]
    , selectedCharacter = ""
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Select name ->
            { model | selectedCharacter = name }

        Unselect ->
            { model | selectedCharacter = "" }


view : Model -> Html Msg
view model =
    let
        unselectButton =
            if model.selectedCharacter == "" then
                p [] [ text "Select a character" ]
            else
                button [ onClick Unselect ] [ text "unselect character" ]
    in
        div []
            [ ul [] <|
                List.map viewItem model.characters
            , p [] [ text model.selectedCharacter ]
            , unselectButton
            ]


viewItem : String -> Html Msg
viewItem name =
    li [ onClick <| Select name ] [ text name ]


main =
    Html.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
