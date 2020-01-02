module Framework.Input exposing (simple, label)

{-| This module exposes simple attibutes for Inputs (beside Buttons) and
styling for labels.

```
Input.text Input.simple
    { onChange = always ()
    , text = "Input.simple"
    , placeholder = Nothing
    , label = Input.labelLeft Input.label <| Element.text "Input.label"
    }
```

@docs simple, label

-}

import Element exposing (Attribute)
import Element.Background as Background
import Element.Font as Font
import Framework.Color as Color


{-| -}
label : List (Attribute msg)
label =
    [ Element.centerX
    , Element.padding 10
    , Element.height Element.shrink
    , Element.width Element.fill
    ]


{-| -}
simple : List (Attribute msg)
simple =
    [ Background.color <| Color.lighterGrey
    , Font.color <| Color.darkerGrey
    ]
