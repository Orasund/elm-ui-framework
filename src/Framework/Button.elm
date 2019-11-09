module Framework.Button exposing (simple)

{-| This module contains a attribute to style buttons.

```
Input.button (Button.simple ++ Color.primary) <|
    { onPress = Nothing
    , label = Element.text "Button.simple ++ Color.primary"
    }
```

The attribute can only be used on `Input.button` but it may be with additional attibutes from this package.

@docs simple

-}

import Element exposing (Attribute)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Framework.Card as Card
import Framework.Color as Color
import Html.Attributes as Attributes


{-| a simple Button styling. Check the source-code for more information.
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
