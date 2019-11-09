module Framework.Card exposing (simple, small, large, fill)

{-| The Card attributes can be used almost anywere in the elm-ui elements.

Here are some examples:

```
Element.column (Card.simple ++ Grid.simple) <|
    [ Element.text <| "adds a border around the column"
    ]
```

```
Element.el Card.small <|
    Element.text "a basic card"
```

```
Input.button (Button.simple ++ Card.large) <|
    { onPress = Nothing
    , label = Element.text "a clickable card"
    }
```

@docs simple, small, large, fill

-}

import Element exposing (Attribute)
import Element.Background as Background
import Element.Border as Border
import Framework.Color as Color


simple : List (Attribute msg)
simple =
    [ Border.shadow
        { blur = 10
        , color = Element.rgba 0 0 0 0.05
        , offset = ( 0, 2 )
        , size = 1
        }
    , Border.width 1
    , Border.color Color.lightGrey
    , Border.rounded 4
    , Element.alignTop
    , Element.padding 20
    , Element.height Element.shrink
    ]


withSize : Int -> List (Attribute msg)
withSize int =
    simple ++ [ Element.width (Element.minimum 240 <| Element.maximum int <| Element.fill) ]


small : List (Attribute msg)
small =
    withSize 240


large : List (Attribute msg)
large =
    withSize 480


fill : List (Attribute msg)
fill =
    simple ++ [ Element.width Element.fill ]
