module Example exposing (main)

import Element exposing (Element)
import Element.Background as Background
import Element.Font as Font
import Element.Input as Input
import Framework
import Framework.Button as Button
import Framework.Card as Card
import Framework.Color as Color
import Framework.Grid as Grid
import Framework.Group as Group
import Framework.Heading as Heading
import Framework.Input as Input
import Framework.Tag as Tag
import Framework.Slider as Slider
import Html exposing (Html)
import Html.Attributes as Attributes


heading : Element msg
heading =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Heading"
        , Element.column Card.fill
            [ Element.el Heading.h1 <| Element.text "Heading.h1"
            , Element.el Heading.h2 <| Element.text "Heading.h2"
            , Element.el Heading.h3 <| Element.text "Heading.h3"
            , Element.el Heading.h3 <| Element.text "Heading.h4"
            , Element.el Heading.h3 <| Element.text "Heading.h5"
            , Element.el Heading.h3 <| Element.text "Heading.h6"
            ]
        ]


tag : Element msg
tag =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Tag"
        , Element.column (Card.fill ++ Grid.simple)
            [ Element.wrappedRow Grid.simple
                [ Element.el Tag.simple <| Element.text "Tag.simple"
                , Element.el Tag.slim <| Element.text "Tag.slim"
                ]
            ]
        ]


group : Element msg
group =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Group"
        , Element.column (Card.fill ++ Grid.simple)
            [ Element.wrappedRow Grid.simple
                [ Element.el (Card.fill ++ Group.left) <| Element.text "Group.left"
                , Element.el (Card.fill ++ Group.center) <| Element.text "Group.center"
                , Element.el (Card.fill ++ Group.right) <| Element.text "Group.right"
                , Element.el (Card.fill ++ Group.top) <| Element.text "Group.top"
                , Element.el (Card.fill ++ Group.bottom) <| Element.text "Group.bottom"
                ]
            ]
        ]

slider : Element ()
slider =
    Element.column Grid.section <|
        [ Element.el Heading.h1 <| Element.text "Slider"
        , Element.column (Card.simple ++ Grid.simple) <|
            [ Element.wrappedRow Grid.simple <|
                [ Input.slider Slider.simple <|
                    { onChange = always ()
                    , label = Input.labelLeft Input.label <| Element.text "Slider.simple"
                    , min = 0
                    , max = 100
                    , value = 42
                    , thumb = Input.thumb Slider.thumb
                    , step = Nothing
                    }
                , Input.slider (Slider.withSteps 10) <|
                    { onChange = always ()
                    , label = Input.labelLeft Input.label <| Element.text "Slider.withSteps 10"
                    , min = 1
                    , max = 10
                    , value = 4
                    , thumb = Input.thumb Slider.thumb
                    , step = Nothing
                    }
                ]
            ]
        , Element.column Grid.simple <|
            [ Element.paragraph [] <|
                List.singleton <|
                    Element.text "Button attributes can be combined with other attributes."
            , Element.wrappedRow Grid.simple <|
                [ Input.slider (Slider.simple ) <|
                    { onChange = always ()
                    , label = Input.labelLeft Input.label <| Element.text "Slider.thumb ++ Color.primary"
                    , min = 0
                    , max = 100
                    , value = 42
                    , thumb = Input.thumb (Slider.thumb ++ Color.primary)
                    , step = Nothing
                    }
                ]
            , Element.paragraph [] <|
                List.singleton <|
                    Element.el Heading.h3 <|
                        Element.text "Grid.compact with Group.left/right"
            , Element.row Grid.compact <|
                [ Input.button Button.groupLeft <|
                    { onPress = Nothing
                    , label = Element.text "Group.left"
                    }
                , Input.button Button.groupRight <|
                    { onPress = Nothing
                    , label = Element.text "Group.right"
                    }
                ]
            ]
        ]


card : Element msg
card =
    Element.column Grid.section <|
        [ Element.el Heading.h1 <| Element.text "Card"
        , Element.paragraph [] <|
            List.singleton <|
                Element.text "Cards work on almost any Element. Try resizing the screen to see the differences"
        , Element.column (Card.fill ++ Grid.simple)
            [ Element.wrappedRow Grid.simple
                [ Element.el Card.simple <| Element.text "Card.simple"
                , Element.el Card.small <| Element.text "Card.small (240px)"
                , Element.el Card.large <| Element.text "Card.large (480px)"
                , Element.el Card.fill <| Element.text "Card.fill"
                ]
            ]
        , Element.paragraph [] <|
            List.singleton <|
                Element.text "Card attributes can be combined with other attributes."
        , Element.wrappedRow Grid.simple <|
            [ Element.el (Card.simple ++ Color.primary) <|
                Element.text "Card.simple ++ Color.primary"
            , Element.el (Color.primary ++ Card.simple) <|
                Element.text "Color.primary ++ Card.simple"
            ]
        ]


color : Element msg
color =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Color"
        , Element.wrappedRow (Card.fill ++ Grid.simple)
            [ Element.column Grid.simple
                [ Element.el Heading.h3 <| Element.text "Elm-Ui Attributes"
                , Element.el (Card.fill ++ Color.primary) <| Element.text "Color.primary"
                , Element.el (Card.fill ++ Color.info) <| Element.text "Color.info"
                , Element.el (Card.fill ++ Color.success) <| Element.text "Color.success"
                , Element.el (Card.fill ++ Color.warning) <| Element.text "Color.warning"
                , Element.el (Card.fill ++ Color.danger) <| Element.text "Color.danger"
                , Element.el (Card.fill ++ Color.light) <| Element.text "Color.light"
                , Element.el (Card.fill ++ Color.simple) <| Element.text "Color.simple"
                , Element.el (Card.fill ++ Color.dark) <| Element.text "Color.dark"
                , Element.el (Card.fill ++ Color.disabled) <| Element.text "Color.disabled"
                ]
            , Element.column Grid.simple
                [ Element.el Heading.h3 <| Element.text "Elm-Ui Colors"
                , Element.el (Card.fill ++ [ Background.color Color.turquoise ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.turquoise"
                        , Element.text "#00d1b2"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.cyan ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.cyan"
                        , Element.text "#209cee"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.green ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.green"
                        , Element.text "#23d160"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.yellow ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.yellow"
                        , Element.text "#ffdd57"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.red ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.red"
                        , Element.text "#ff3860"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.white ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.white"
                        , Element.text "#ffffff"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.lighterGrey ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.lighterGrey"
                        , Element.text "#f5f5f5"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.lightGrey ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.lightGrey"
                        , Element.text "#dbdbdb"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.grey ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.grey"
                        , Element.text "#7a7a7a"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.darkGrey, Font.color Color.lighterGrey ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.darkGrey"
                        , Element.text "#363636"
                        ]
                , Element.el (Card.fill ++ [ Background.color Color.darkerGrey, Font.color Color.lighterGrey ]) <|
                    Element.row Grid.spacedEvenly <|
                        [ Element.text "Color.darkerGrey"
                        , Element.text "#121212"
                        ]
                ]
            ]
        ]


grid : Element msg
grid =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Grid"
        , Element.column Grid.simple <|
            [ Element.wrappedRow Grid.simple
                [ Element.column (Card.simple ++ Grid.simple) <|
                    [ Element.el Heading.h3 <| Element.text "Grid.simple"
                    , Element.row Grid.simple <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    , Element.row Grid.simple <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    , Element.row Grid.simple <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    ]
                , Element.column (Card.simple ++ Grid.compact) <|
                    [ Element.el Heading.h3 <| Element.text "Grid.compact"
                    , Element.row Grid.compact <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    , Element.row Grid.compact <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    , Element.row Grid.compact <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    ]
                ]
            , Element.wrappedRow Grid.simple
                [ Element.column (Card.simple ++ Grid.spaceEvenly) <|
                    [ Element.el Heading.h3 <| Element.text "Grid.spaceEvenly"
                    , Element.row Grid.spacedEvenly <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    , Element.row Grid.spacedEvenly <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    , Element.row Grid.spacedEvenly <|
                        [ Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        , Element.el Card.simple <| Element.text "item"
                        ]
                    ]
                , Element.el Card.fill <|
                    Element.column Grid.section <|
                        [ Element.el Heading.h3 <| Element.text "Grid.section"
                        , Element.row Grid.section <|
                            [ Element.el Card.simple <| Element.text "item"
                            , Element.el Card.simple <| Element.text "item"
                            , Element.el Card.simple <| Element.text "item"
                            ]
                        , Element.row Grid.section <|
                            [ Element.el Card.simple <| Element.text "item"
                            , Element.el Card.simple <| Element.text "item"
                            , Element.el Card.simple <| Element.text "item"
                            ]
                        , Element.row Grid.section <|
                            [ Element.el Card.simple <| Element.text "item"
                            , Element.el Card.simple <| Element.text "item"
                            , Element.el Card.simple <| Element.text "item"
                            ]
                        ]
                ]
            , Element.column Grid.simple <|
                [ Element.paragraph [] <|
                    List.singleton <|
                        Element.text "Grid attributes can be combined with other attributes."
                , Element.paragraph [] <|
                    List.singleton <|
                        Element.el Heading.h3 <|
                            Element.text "Grid.spaceEvenly ++ Card.simple ++ Color.dark"
                , Element.column (Grid.spaceEvenly ++ Card.simple ++ Color.dark) <|
                    [ Element.row Grid.spaceEvenly <|
                        [ Element.el (Card.simple ++ Color.warning) <| Element.text ""
                        , Element.el (Card.simple ++ Color.info) <| Element.text ""
                        , Element.el (Card.simple ++ Color.success) <| Element.text ""
                        ]
                    ]
                ]
            ]
        ]


button : Element msg
button =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Button"
        , Element.column (Card.simple ++ Grid.simple) <|
            [ Element.wrappedRow Grid.simple <|
                [ Input.button Button.simple <|
                    { onPress = Nothing
                    , label = Element.text "Button.simple"
                    }
                , Input.button Button.fill <|
                    { onPress = Nothing
                    , label = Element.text "Button.fill"
                    }
                ]
            ]
        , Element.column Grid.simple <|
            [ Element.paragraph [] <|
                List.singleton <|
                    Element.text "Button attributes can be combined with other attributes."
            , Element.wrappedRow Grid.simple <|
                [ Input.button (Button.simple ++ Tag.simple) <|
                    { onPress = Nothing
                    , label = Element.text "Button.simple ++ Tag.simple"
                    }
                , Input.button (Button.simple ++ Color.disabled) <|
                    { onPress = Nothing
                    , label = Element.text "Button.simple ++ Color.disabled"
                    }
                , Input.button
                    (Button.simple ++ Color.primary)
                  <|
                    { onPress = Nothing
                    , label = Element.text "Button.simple ++ Color.primary"
                    }
                , Input.button (Button.simple ++ Card.large) <|
                    { onPress = Nothing
                    , label = Element.text "Button.simple ++ Card.large"
                    }
                ]
            , Element.paragraph [] <|
                List.singleton <|
                    Element.el Heading.h3 <|
                        Element.text "Grid.compact with Group.left/right"
            , Element.row Grid.compact <|
                [ Input.button Button.groupLeft <|
                    { onPress = Nothing
                    , label = Element.text "Group.left"
                    }
                , Input.button Button.groupRight <|
                    { onPress = Nothing
                    , label = Element.text "Group.right"
                    }
                ]
            ]
        ]


input : Element ()
input =
    Element.column Grid.section <|
        [ Element.el Heading.h2 <| Element.text "Input"
        , Element.wrappedRow (Card.fill ++ Grid.simple)
            [ Element.column Grid.simple
                [ Input.text Input.simple
                    { onChange = always ()
                    , text = "Input.simple"
                    , placeholder = Nothing
                    , label = Input.labelLeft Input.label <| Element.text "Input.label"
                    }
                , Input.multiline Input.simple
                    { onChange = always ()
                    , text = "Input.simple"
                    , placeholder = Nothing
                    , label = Input.labelLeft Input.label <| Element.text "Input.label"
                    , spellcheck = False
                    }
                ]
            , Element.column Grid.simple
                [ Input.currentPassword Input.simple
                    { onChange = always ()
                    , text = "Input.simple"
                    , placeholder = Nothing
                    , label = Input.labelLeft Input.label <| Element.text "Input.label"
                    , show = False
                    }
                ]
            ]
        , Element.paragraph [] <|
            List.singleton <|
                Element.text "Input attributes can be combined with other attributes."
        , Element.wrappedRow Grid.simple <|
            [ Input.text (Color.danger ++ Input.simple)
                { onChange = always ()
                , text = ""
                , placeholder = Nothing
                , label = Input.labelLeft Input.label <| Element.text "Color.danger ++ Input.simple"
                }
            ]
        , Element.wrappedRow Grid.simple <|
            [ Input.text (Color.disabled ++ Input.simple)
                { onChange = always ()
                , text = ""
                , placeholder = Nothing
                , label = Input.labelLeft Input.label <| Element.text "Color.disabled ++ Input.simple"
                }
            ]
        , Element.paragraph (Card.fill ++ Color.warning) <|
            [ Element.el [ Font.bold ] <| Element.text "Warning: "
            , Element.paragraph [] <|
                List.singleton <|
                    Element.text "color changing attributes need to come before the Input attribute."
            ]
        ]


view : Element ()
view =
    Element.column
        Framework.container
        [ Element.el Heading.h1 <| Element.text "Elm-Ui Framework"
        , heading
        , tag
        , group
        , color
        , card
        , grid
        , button
        , input
        , slider
        ]


main : Html ()
main =
    Framework.responsiveLayout [] <|
        view
