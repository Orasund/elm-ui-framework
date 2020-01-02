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
import Framework.Heading as Heading
import Framework.Input as Input
import Html exposing (Html)


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


card : Element msg
card =
    Element.column Grid.section <|
        [ Element.el Heading.h1 <| Element.text "Card"
        , Element.text "Cards work on almost any Element. Try resizing the screen to see the differences"
        , Element.column (Card.fill ++ Grid.simple)
            [ Element.wrappedRow Grid.simple
                [ Element.el Card.simple <| Element.text "Card.simple"
                , Element.el Card.small <| Element.text "Card.small (240px)"
                , Element.el Card.large <| Element.text "Card.large (480px)"
                , Element.el Card.fill <| Element.text "Card.fill"
                ]
            ]
        , Element.text "Card attributes can be combined with other attributes."
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
                , Element.el (Card.fill ++ Color.disabled) <| Element.text "Color.disabled"
                , Element.el (Card.fill ++ Color.dark) <| Element.text "Color.dark"
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
                [ Element.text "Grid attributes can be combined with other attributes."
                , Element.el Heading.h3 <| Element.text "Grid.spaceEvenly ++ Card.simple ++ Color.dark"
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
                , Input.button Button.groupLeft <|
                    { onPress = Nothing
                    , label = Element.text "Button.groupLeft"
                    }
                , Input.button Button.groupCenter <|
                    { onPress = Nothing
                    , label = Element.text "Button.groupCenter"
                    }
                , Input.button Button.groupRight <|
                    { onPress = Nothing
                    , label = Element.text "Button.groupRight"
                    }
                , Input.button Button.groupTop <|
                    { onPress = Nothing
                    , label = Element.text "Button.groupTop"
                    }
                , Input.button Button.groupBottom <|
                    { onPress = Nothing
                    , label = Element.text "Button.groupBottom"
                    }
                ]
            , Element.column Grid.section <|
                [ Element.text "Button attributes can be combined with other attributes."
                , Element.wrappedRow Grid.simple <|
                    [ Input.button (Button.simple ++ Color.disabled) <|
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
                , Element.el Heading.h3 <| Element.text "Grid.compact with Button.groupLeft/Center/Right"
                , Element.row Grid.compact <|
                    [ Input.button Button.groupLeft <|
                        { onPress = Nothing
                        , label = Element.text "Button.groupLeft"
                        }
                    , Input.button Button.groupRight <|
                        { onPress = Nothing
                        , label = Element.text "Button.groupRight"
                        }
                    ]
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
        , Element.text "Input attributes can be combined with other attributes."
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
            , Element.text "color changing attributes need to come before the Input attribute."
            ]
        ]


view : Element ()
view =
    Element.column
        Framework.container
        [ Element.el Heading.h1 <| Element.text "Elm-Ui Framework"
        , heading
        , color
        , card
        , grid
        , button
        , input
        ]


main : Html ()
main =
    Framework.layout [] <|
        view
