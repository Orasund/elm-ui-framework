module Framework.Group exposing (bottom, center, left, right, top)

{- This module contains different attributes for grouping things together


   @docs groupLeft, groupCenter, groupRight, groupTop, groupBottom

-}

import Element exposing (Attribute)
import Element.Border as Border


{-| Left of a group wrapped in `Grid.compact`
-}
left : List (Attribute msg)
left =
    [ Border.roundEach
        { topLeft = 4
        , topRight = 0
        , bottomLeft = 4
        , bottomRight = 0
        }
    ]


{-| Right of a group wrapped in `Grid.compact`
-}
right : List (Attribute msg)
right =
    [ Border.roundEach
        { topLeft = 0
        , topRight = 4
        , bottomLeft = 0
        , bottomRight = 4
        }
    ]


{-| Top of a group wrapped in `Grid.compact`
-}
top : List (Attribute msg)
top =
    [ Border.roundEach
        { topLeft = 4
        , topRight = 4
        , bottomLeft = 0
        , bottomRight = 0
        }
    ]


{-| Bottom of a group wrapped in `Grid.compact`
-}
bottom : List (Attribute msg)
bottom =
    [ Border.roundEach
        { topLeft = 0
        , topRight = 0
        , bottomLeft = 4
        , bottomRight = 4
        }
    ]


{-| Center of a group wrapped in `Grid.compact`
-}
center : List (Attribute msg)
center =
    [ Border.rounded 0
    ]
