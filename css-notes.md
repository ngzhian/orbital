CSS
===

What is CSS
-----------
- Cascading Style Sheets
- to make HTML look nicer, easier to digest

CSS in the Wild
---------------
- tweaking css values for a website using inspector
- fire up inspector, or `Control-Shift-C`, click on something, and see the
    sidebar

Simple styles
-------------
- 3 ways of defining css,
  1. inline
  2. `<style>` tag
  3. external stylesheet
- most obvious style change is the `background-color`
```html
<body style="background-color: #dddddd">
```
- what's missing is a logo
``` html
  <div>IMPRESSIVE LOGO</div>
```
- wrap it all in a `header for convenience`
``` html
<header>
  <!-- logo goes here -->
  <!-- nav goes here -->
</header>
```
- use `text-align: center` to center logo
```html
  <div style="text-align: center;">
    IMPRESSIVE LOGO
  </div>
```
- use `text-align: center` to center navigation links
```html
  <ul style="text-align: center">
```
- use `list-style-type: none` to remove bullet points
```html
  <ul style="text-align: center; list-style-type: none;">
```
- we want our links to be side by side, use `display: inline-block` on
    all the `<li>`
```html
  <li style="display: inline-block;"> <a href="#details">Details</a> </li>
  <li style="display: inline-block;"> <a href="#installation">Installation</a> </li>
  <li style="display: inline-block;"> <a href="#creators">Creators</a> </li>
```
- this is really troublesome, introduce `<style>` and css selectors

Style tags
----------
### Selectors
- create `style` tag in `head`
```html
<!-- in head -->
<style>
</style>
```
- plain `body` to select html tags
```html
  body {
    background-color: #dddddd;
  }
```
- `.logo` to select class
```html
  .logo {
    color: #90a150
  }
```
- `ul` to style lists
```html
  ul {
    list-style-type: none;
  }
  li {
    display: inline-block;
    margin-left: 1em;
  }
```
- notice that it affected the other list that we didn't want to touch
- use `nav ul` selector to be more precise, or give a `class` to the nav
```html
  nav ul {
    list-style-type: none;
  }
  nav ul li {
    display: inline-block;
  }
```
### Float, box model, clearing
- we want logo to be beside the links, use float
- using float to ask browser to squeeze them on the same line
- `float: left` for both `.logo` and `nav ul`
```html
  .logo {
    float: left;
    font-size: 3em;
  }
  nav ul {
    float: right;
    list-style-type: none;
  }
```
- notice that our `h1` is now squeezed on top too, because there is space
- use a `clear: both` on `div.content` to clear it away
```html
  .content {
    clear: both;
  }
```
### Margins and padding
- our links seem to be too close together, use `margin-left` to give it space
```html
  nav ul li {
    display: inline-block;
    margin-left: 1em;
  }
```
- our content looks like they are too close to the edges of the page
- wrap everything in a `div.container`, set `padding-top: 3em`
```html
  .container {
    padding-top: 3em;
  }
```
### Fonts
- make impressive logo bigger using `font-size`
```html
  .logo {
    color: #90a150;
    float: left;
    font-size: 3em;
  }
```
- `text-align` has no more use now that it's floated, remove it
- introduce `font` as a shorthand
```html
  nav ul {
    float: right;
    list-style-type: none;
    font-size: 1.3em;
    font: 1.3em sans-serif;
  }
```
### Centering everything
- set a `width` for `.container` or a `max-width`
```html
  .container {
    margin: 0px auto;
    max-width: 760px;
    padding-top: 3em;
  }
```
### Pseudo selectors
- introduce `a:link`, `a:hover`, `a:visited` etc
```html
  a:link {
    color: #839e24;
    text-decoration: none;
    border-bottom: 0.14em dotted #839e24;
  }
  a:hover {
    color: #303030;
    background: #b1d641;
    border-bottom: none;
  }
```
- there's a lot more, such as `n-th child`, explore on your own

References
----------
- [Detailed reference on all CSS properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)

