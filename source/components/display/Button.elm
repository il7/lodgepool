module Components.Display.Button exposing (view) -- -- where

import Html exposing (Html, Attribute, a, text)
import Html.Attributes exposing (attribute, class, classList,href)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)

view : List (Attribute msg) -> List (Html msg) -> Html msg
view attrs children = 
  let defAttrs = 
    [ classList [ ("button", True) ]
    , attribute "aria-role" "button"
    , href "#" ]
  in 
    a (mergeAttributes defAttrs attrs) children
