module Framework.Grid exposing (simple, spacedEvenly, section)

{-| This module include the basic attributes for columns and rows and two variants.
Any of these Attributes can be used for columns and rows.

```
Element.row Grid.spacedEvenly <|
    [ Element.text "left item"
    , Element.text "center item"
    , Element.text "right item"
    ]
```

@docs simple, spacedEvenly, section

-}

import Element exposing (Attribute)
import Element.Border as Border
import Framework.Color as Color


{-| The basic attributes for columns and rows.
Check the source-code for more information.
-}
simple : List (Attribute msg)
simple =
    [ Element.spacing 10
    , Element.width Element.fill
    , Element.alignTop
    ]


{-| The simple attibutes but with evenly spaced elements.
Check the source-code for more information.
-}
spacedEvenly : List (Attribute msg)
spacedEvenly =
    [ Element.spaceEvenly
    , Element.width Element.fill
    , Element.height Element.fill
    , Element.centerX
    , Element.centerY
    ]


{-| The simple attributes but with a horizontal line at the top
Check the source-code for more information.
-}
section : List (Attribute msg)
section =
    simple
        ++ [ Border.widthEach
                { bottom = 0
                , left = 0
                , right = 0
                , top = 2
                }
           , Border.color <| Color.lightGrey
           , Element.paddingEach
                { bottom = 30
                , left = 0
                , right = 0
                , top = 10
                }
           ]
