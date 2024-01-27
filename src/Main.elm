module Main exposing (main, update, view)

import Browser
import Browser.Navigation as Nav
import Html as H exposing (Html)
import Html.Attributes as HA
import Html.Events as HE
import Maybe exposing (Maybe(..))
import Url as Url
import Url.Builder as Url


main : Program () Model Msg
main =
    Browser.application { init = init, view = viewDocument, update = update, subscriptions = subscriptions, onUrlChange = UrlChanged, onUrlRequest = LinkClicked }


type Model
    = Model


type Msg
    = UrlChanged Url.Url
    | LinkClicked Browser.UrlRequest


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    ( Model
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


viewDocument : Model -> Browser.Document Msg
viewDocument model =
    { title = "LinkSnake"
    , body = view model
    }


view : Model -> List (Html Msg)
view model =
    [ H.text "Loading" ]
