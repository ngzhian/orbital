HTML
====
What is HTML
------------
- HyperText Markup Language
- large part of what the web is
- you use your *browser*, which speaks *HTTP* to the *Servers*
    on the *Internet* to see webpages

HTML in the wild
----------------
- show the source of a webpage, maybe [NUS Computing](www.comp.nus.edu.sg)
- quick run through of **inspect element**
- you can copy HTML from any website

Simplest html page
------------------
- make a super simple html page, `index.html` which doesn't have tags
- illustrate that html is just plain text
- this is incomplete and incorrect, but your browser tries to
    display it anyway

HTML and tags
-------------
- using Sublime Text, just type `html` and press `Tab` to see a barebones
    HTML structure
- `<!DOCTYPE htmL>` requierd for legacy reasons to help browser in rendering
- `<html>` tag defines that this is a html page
- `<title>` title of webpage, shown in search results and browser tab
- `<head>` not seen by users, mainly for computers, e.g. search engine crawlers
- `<body>` what is seen by us, the user

Our project page
----------------
- whatever project you end up doing, you will probably want to build a
    a website to showcase it, let's use that as a starting point
- enter a `title` for the webpage : `Orbital Project Name - Home`
- enter a `h1` : `Project Name`
- enter a `p` : `awesome subtitle`
- enter a `div` to illustrate modularity
- illustrate how html ignores whitespace, show `br` but don't advocate using
- use of `h2` to illustrate importance of different headings
- enter a `em` for emphasis
- enter a `strong` for stronger emphasis
- enter a `nav` for navigation links
- enter a `ul` for unordered list, which can represent a list of links
- enter a `li` for a list element inside a list
- enter a `a` with `href` to showcase links
    see the difference in styling of links, blue underline
- enter a `id` attribute for `div` to make links work
- enter a `img` with `src` attribute for a screenshot of your project

CSS
===
some inspiration
- www.aquatilis.tv
- www.awwwards.com/winner-list/
- wwwaleeforoughi.com
- wagerfield.github.io/parallax
- yourpower.panda.org
- flatvsrealism.com

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
- set `width` for `.logo`, set `margin` to `auto`


Resources
---------
- flukeout.github.io
- developer.mozilla.org
- www.webplatform.org
- www.html5rocks.com
- www.w3schools.com
- html5up
- tympanus.net/codrops
- smashingmagazine
