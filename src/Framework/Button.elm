module Framework.Button exposing (simple, groupLeft, groupCenter, groupRight)

{-| This module contains attributes to style buttons.

```
Input.button (Button.simple ++ Color.primary) <|
    { onPress = Nothing
    , label = Element.text "Button.simple ++ Color.primary"
    }
```

The attribute can only be used on `Input.button` but it may be with additional attibutes from this package.

@docs simple, groupLeft, groupCenter, groupRight

-}

import Element exposing (Attribute)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Framework.Card as Card
import Framework.Color as Color
import Html.Attributes as Attributes


{-| A simple Button styling. Check the source-code for more information.
-}
simple : List (Attribute msg)
simple =
    Card.simple
        ++ [ Font.center
           , Background.color <| Color.lightGrey
           , Element.mouseOver
                [ Border.color <| Color.grey
                ]
           , Element.paddingXY 16 12
           ]


{-| Left button of a group wrapped in `Grid.compact`
-}
groupLeft : List (Attribute msg)
groupLeft =
    simple
        ++ [ Border.roundEach
                { topLeft = 4
                , topRight = 0
                , bottomLeft = 4
                , bottomRight = 0
                }
           ]


{-| Right button of a group wrapped in `Grid.compact`
-}
groupRight : List (Attribute msg)
groupRight =
    simple
        ++ [ Border.roundEach
                { topLeft = 0
                , topRight = 4
                , bottomLeft = 0
                , bottomRight = 4
                }
           ]


{-| Center button of a group wrapped in `Grid.compact`
-}
groupCenter : List (Attribute msg)
groupCenter =
    simple
        ++ [ Border.rounded 0
           ]
