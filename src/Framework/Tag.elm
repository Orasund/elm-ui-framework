module Framework.Tag exposing (simple, slim)

import Element exposing (Attribute)
import Element.Background as Background
import Element.Border as Border
import Framework.Color as Color


simple : List (Attribute msg)
simple =
    Color.simple
        ++ [ Border.rounded 4
           , Element.paddingXY 7 4
           ]


slim : List (Attribute msg)
slim =
    simple
        ++ [ Element.paddingXY 7 1
           ]
