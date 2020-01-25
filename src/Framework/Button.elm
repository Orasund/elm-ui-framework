module Framework.Button exposing
    ( simple, fill
    , groupLeft, groupCenter, groupRight, groupTop, groupBottom
    )

{-| This module contains attributes to style buttons.

```
Input.button (Button.simple ++ Color.primary) <|
    { onPress = Nothing
    , label = Element.text "Button.simple ++ Color.primary"
    }
```

The attribute can only be used on `Input.button` but it may be with additional attibutes from this package.

@docs simple, fill


## DEPRECATED

@docs groupLeft, groupCenter, groupRight, groupTop, groupBottom

-}

import Element exposing (Attribute)
import Element.Border as Border
import Element.Font as Font
import Framework.Card as Card
import Framework.Color as Color
import Framework.Group as Group


{-| A simple Button styling. Check the source-code for more information.
-}
simple : List (Attribute msg)
simple =
    Card.simple
        ++ Color.simple
        ++ [ Font.center
           , Element.mouseOver
                [ Border.color <| Color.grey
                ]
           , Element.paddingXY 16 12
           ]


{-| A Button that fills the avaliable area. Check the source code for more information.
-}
fill : List (Attribute msg)
fill =
    simple
        ++ [ Element.width <| Element.fill ]


{-| DEPRECATED. Use (Button.simple ++ Group.left) instead
-}
groupLeft : List (Attribute msg)
groupLeft =
    simple ++ Group.left


{-| DEPRECATED. Use (Button.simple ++ Group.right) instead
-}
groupRight : List (Attribute msg)
groupRight =
    simple ++ Group.right


{-| DEPRECATED. Use (Button.simple ++ Group.top) instead
-}
groupTop : List (Attribute msg)
groupTop =
    simple ++ Group.top


{-| DEPRECATED. Use (Button.simple ++ Group.top) instead
-}
groupBottom : List (Attribute msg)
groupBottom =
    simple ++ Group.bottom


{-| DEPRECATED. Use (Button.simple ++ Group.top) instead
-}
groupCenter : List (Attribute msg)
groupCenter =
    simple ++ Group.center
