module Framework.Slider exposing (simple,withSteps,thumb)

{-| This module exposes simple attibutes for sliders and
styling for the thumb.

```
Input.slider Slider.simple
    { onChange = ChangedSlider
    , label = Input.labelLeft Input.label <| Element.text "Slider.simple"
    , min = 0
    , max = 100
    , value = 42
    , thumb = Input.thumb Slider.thumb
    , step = Nothing
    }
```

@docs simple, withSteps, thumb

-}

import Element exposing (Attribute)
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border
import Framework.Color as Color

{-| A simple slider
-}
simple : List (Attribute msg)
simple =
    [ Element.behindContent
        (Element.el
            [ Element.width Element.fill
            , Element.height (Element.px 2)
            , Element.centerY
            , Background.color Color.lightGrey
            , Border.rounded 2
            ]
            Element.none
        )
    , Element.height <| Element.fill
    ]

{-| A slider for integers.
the first argument denotes the amount of possible values (max - min)
-}
withSteps : Int -> List (Attribute msg)
withSteps step =
    [ Element.behindContent
        (   List.concat
                [ List.singleton <| 
                    [ Element.width <| Element.px <| 6
                    , Border.widthEach { bottom = 0, left = 0, right = 1, top = 0 }
                    ]
                , [ Element.width <| Element.fill
                    , Border.widthXY 1 0  ] |> List.repeat (step - 1)
                , List.singleton <|
                    [ Element.width <| Element.px <| 6
                    , Border.widthEach <| { bottom = 0, left = 1, right = 0, top = 0 }
                    ]
                ]
            |> List.map
                (\list ->
                    Element.none
                    |> Element.el 
                        (list
                            ++ [ Element.height (Element.px 2)
                        , Background.color Color.lightGrey 
                        , Border.color Color.grey
                        ])
                        
                
                )
            |> Element.row
                [ Element.width Element.fill
                , Element.height (Element.px 2)
                , Element.centerY
                , Border.rounded 2
                ]
        )
    , Element.height <| Element.fill
    ]

{-| The styling for a round thumb
-}
thumb : List (Attribute Never)
thumb =
    [ Element.width (Element.px 12)
    , Element.height (Element.px 12)
    , Border.rounded 6
    , Background.color Color.grey
    ]