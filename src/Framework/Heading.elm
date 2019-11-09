module Framework.Heading exposing (h1, h2, h3, h4, h5, h6)

{-| Styling for heading

```
Element.el Heading.h1 <| Element.text "Only Element.el may be styled as a heading"
```

@docs h1, h2, h3, h4, h5, h6

-}

import Element exposing (Attribute)
import Element.Font as Font
import Element.Region as Region


h : Int -> List (Attribute msg)
h inputLevel =
    let
        level : Int
        level =
            inputLevel
                |> clamp 1 6

        size : Int
        size =
            if level == 6 then
                14

            else
                32 - (level - 1) * 4
    in
    [ Region.heading <| level
    , Font.size <| size
    , Element.paddingEach { top = 2, right = 0, bottom = 2, left = 0 }
    , Element.alignLeft
    , Font.bold
    ]


{-| -}
h1 : List (Attribute msg)
h1 =
    h 1


{-| -}
h2 : List (Attribute msg)
h2 =
    h 2


{-| -}
h3 : List (Attribute msg)
h3 =
    h 3


{-| -}
h4 : List (Attribute msg)
h4 =
    h 4


{-| -}
h5 : List (Attribute msg)
h5 =
    h 5


{-| -}
h6 : List (Attribute msg)
h6 =
    h 6
