module Main exposing (Model, Msg(..), header, init, main, update, view)

import Browser
import FeatherIcons
import Html exposing (..)
import Html.Attributes exposing (..)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ header model
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }



---- Other stuff ----


header : Model -> Html Msg
header model =
    div [ class "flex bb b--light-gray w-100 items-center" ]
        [ div [ class "w5 flex pv3 ph4" ]
            [ FeatherIcons.menu
                |> FeatherIcons.toHtml []
            , h1 [ class "f4 mid-gray ma0 mb1 ml3" ] [ text "Calendar" ]
            ]
        , div [ class "w-100 flex bl b--light-gray pv3 ph4 items-center" ]
            [ button [ class "pointer f6 bg-white ba b--light-silver br2 ph3 pv2" ] [ text "Today" ]
            , div [ class "flex pl3" ]
                [ FeatherIcons.chevronLeft
                    |> FeatherIcons.toHtml []
                , FeatherIcons.chevronRight
                    |> FeatherIcons.toHtml []
                ]
            , h2 [ class "pl4 fw1 ma0 pa0 mb1 f3" ] [ text "April 2019" ]
            ]
        ]
