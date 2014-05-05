CSS
===

What is CSS
-----------
- Cascading Style Sheets
- to make HTML look nicer, easier to digest

CSS in the Wild
---------------
- tweaking css values for a website using inspector

Simple styles
-------------
- 3 ways of defining css,
  - inline
  - `<style>` tag and selectors
  - external stylesheet
- show inline css using body background:
  `<body style="background-color: #dddddd">`
- use `text-align: center` to center logo
- use `text-align: center` to center navigation links
- use `list-style-type: none` to remove bullet points
- we want our links to be side by side, use `display: inline-block` on
    all the `<li>`
- this is really troublesome, introduce `<style>` and css selectors

Style tags
----------
### Selectors
- plain `body` to select html tags
- `.logo` to select class
- `ul` to style lists
  - notice that it affected the other list that we didn't want to touch
- use `nav ul` selector to be more precise, or give a `class` to the nav
### Float, box model, clearing
- we want logo to be beside the links, use float
- using float to ask browser to squeeze them on the same line
- `float: left` for both `.logo` and `nav ul`
- notice that our `h1` is now squeezed on top too, because there is space
- use a `clear: both` on `div.content` to clear it away
### Margins and padding
- our links seem to be too close together, use `margin-left` to give it space
- our content looks like they are too close to the edges of the page
- wrap everything in a `div.container`, set `padding-top: 3em`
### Fonts
- make impressive logo bigger using `font-size`
- `text-align` has no more use now that it's floated, remove it
- introduce `font` as a shorthand
### Centering everything
- set a `width` for `.container` or a `max-width`
- try to center logo, face problem, detour to explain a little about Box Model
### Pseudo selectors
- introduce `a:link`, `a:hover`, `a:visited` etc
- there's a lot more, such as `n-th child`, explore on your own

References
----------
- [Detailed reference on all CSS properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)

