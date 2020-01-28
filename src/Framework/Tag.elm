module Framework.Tag exposing (simple, slim)

{-| A Tag is a inline highlight of a text.

@docs simple, slim

-}

import Element exposing (Attribute)
import Element.Background as Background
import Element.Border as Border
import Framework.Color as Color


{-| A basic Tag.
Check the source-code for more information.
-}
simple : List (Attribute msg)
simple =
    Color.simple
        ++ [ Border.rounded 4
           , Element.paddingXY 7 4
           ]


{-| A slim Tag.
Check the source-code for more information.
-}
slim : List (Attribute msg)
slim =
    simple
        ++ [ Element.paddingXY 7 1
           ]
