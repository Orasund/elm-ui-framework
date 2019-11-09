module Framework.Color exposing
    ( cyan, green, lighterGrey, lightGrey, grey, darkGrey, darkerGrey, red, turquoise, yellow
    , danger, light, dark, disabled, info, primary, success, warning
    )

{-| This module contains the colors used in the framework.

@docs cyan, green, lighterGrey, lightGrey, grey, darkGrey, darkerGrey, red, turquoise, yellow

Some colors also have a Attribute that can be used nearly everywhere.

@docs danger, light, dark, disabled, info, primary, success, warning

-}

import Element exposing (Attribute, Color)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes as Attributes


{-| -}
lightGrey : Color
lightGrey =
    Element.rgb255 219 219 219


{-| -}
disabled : List (Attribute msg)
disabled =
    [ Background.color <| lightGrey
    , Border.color <| lightGrey
    , Font.color <| grey
    , Element.mouseOver []
    , Element.focused []
    , Element.htmlAttribute <| Attributes.style "cursor" "not-allowed"
    ]


{-| -}
grey : Color
grey =
    Element.rgb255 122 122 122


{-| -}
darkGrey : Color
darkGrey =
    Element.rgb255 54 54 54


{-| -}
turquoise : Color
turquoise =
    Element.rgb255 0 209 178


{-| -}
primary : List (Attribute msg)
primary =
    [ Background.color <| turquoise
    , Border.color <| turquoise
    ]


{-| -}
cyan : Color
cyan =
    Element.rgb255 32 156 238


{-| -}
info : List (Attribute msg)
info =
    [ Background.color <| cyan
    , Border.color <| cyan
    ]


{-| -}
green : Color
green =
    Element.rgb255 35 209 96


{-| -}
success : List (Attribute msg)
success =
    [ Background.color <| green
    , Border.color <| green
    ]


{-| -}
yellow : Color
yellow =
    Element.rgb255 255 221 87


{-| -}
warning : List (Attribute msg)
warning =
    [ Background.color <| yellow
    , Border.color <| yellow
    ]


{-| -}
red : Color
red =
    Element.rgb255 255 56 96


{-| -}
danger : List (Attribute msg)
danger =
    [ Background.color <| red
    , Border.color <| red
    , Font.color <| lighterGrey
    ]


{-| -}
lighterGrey : Color
lighterGrey =
    Element.rgb255 245 245 245


{-| -}
light : List (Attribute msg)
light =
    [ Background.color <| lighterGrey
    , Border.color <| lighterGrey
    ]


{-| -}
darkerGrey : Color
darkerGrey =
    Element.rgb255 18 18 18


{-| -}
dark : List (Attribute msg)
dark =
    [ Background.color <| darkerGrey
    , Border.color <| darkerGrey
    , Font.color <| lighterGrey
    ]
