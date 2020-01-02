module Framework exposing (layout, container, layoutOptions, layoutAttributes)

{-| This module includes the basic building bocks.
Maybe start by copying the follow code into your project:

```
view : Html msg
view =
    Framework.layout [] <|
        Element.el Framework.container <|
            Element.text "the first element should be a container."
```

@docs layout, container, layoutOptions, layoutAttributes

-}

import Element exposing (Attribute, Element, Option)
import Element.Background as Background
import Element.Font as Font
import Element.Region as Region
import Framework.Color as Color
import Html exposing (Html)


{-| The container should be the outer most element.
It centers the content and sets the background to white.
-}
container : List (Attribute msg)
container =
    [ Element.centerX
    , Element.centerY
    , Element.width (Element.fill |> Element.maximum 1200)
    , Element.padding <| 20
    , Region.mainContent
    , Background.color <| Element.rgb255 255 255 255
    ]


{-| A replacement of `Element.layout` adding both the `Framework.layoutOptions` and the Framework.layoutAttributes.
-}
layout : List (Attribute msg) -> Element msg -> Html msg
layout attributes =
    Element.layoutWith
        { options = layoutOptions
        }
        (layoutAttributes ++ attributes)


{-| The default layoutOptions. Check the source code if you want to know more.
-}
layoutOptions : List Option
layoutOptions =
    Element.focusStyle
        { borderColor = Just Color.turquoise
        , backgroundColor = Nothing
        , shadow =
            Just <|
                { blur = 10
                , color = Color.turquoise
                , offset = ( 0, 0 )
                , size = 1
                }
        }
        |> List.singleton


{-| The default Attributes. Check the source code if you want to know more.
-}
layoutAttributes : List (Attribute msg)
layoutAttributes =
    [ Font.size 16
    , Font.color <| Color.darkerGrey
    ]
        ++ Color.light
