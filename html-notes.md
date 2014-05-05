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
- enter a `form` with `input.email`, `input.comments`,`submit`
- demo submitting query to google search first, then submit query to
    own page, this will be implemented later during GAE
- use `label` to tell the user what the field is for
- use `placeholder` instead of label

References
----------
- [HTML element reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- [Tutorial on HTML5 forms](www.html5rocks.com/en/tutorials/forms/html5forms/)

