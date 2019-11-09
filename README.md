# elm-ui-framework

Elm-ui Framework is a reinterpretation of [lucamug/style-framework](https://package.elm-lang.org/packages/lucamug/style-framework/latest/).

The basic idea is that we use [mdgriffith/elm-ui](https://package.elm-lang.org/packages/mdgriffith/elm-ui/latest/) for layouts and only add styling in form of `List (Attributes msg)` lists.

```
Element.el Card.simple <|
  Element.text "This is a basic card"
```

[Here is an example of the framework in action](https://orasund.github.io/elm-ui-framework/)

## When to use this package

* **As an addition to elm-ui**  
    If are using Elm-ui, you can always install this package along side it.
* **As a basic framework**  
    If you are creating a small project and don't want to think about styling.
* **As a starting point for your own theme**  
    If you want to create your own theme, you can start by using this package and then slowly replaces various functions.

For a more professional use, it might be that [lucamug/style-framework](https://package.elm-lang.org/packages/lucamug/style-framework/latest/) suits you better.

## Getting started

The most minimal code would be the following

```
view : Html msg
view =
    Framework.layout [] <|
        Element.el Framework.container <|
            Element.text "the first element should be a container."
```

from here you can start building you project using elm-ui. This package contains
basic stylings:

* `Grid.simple` for Columns, Rows and WrappedRows,
* `Button.simple` for buttons,
* `Input.simple` for inputs and `Label.simple` for the label.
