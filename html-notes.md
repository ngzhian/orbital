HTML
====
What is HTML
------------
- **H**yper**T**ext **M**arkup **L**anguage
- large part of what the web is
- you use your *browser*, which speaks *HTTP* to the *Servers*
    on the *Internet* to see webpages

HTML in the wild
----------------
- check the source of a webpage, maybe [NUS Computing](www.comp.nus.edu.sg)
- on Firefox, right click on the web page and select `View Page Source`
    or `Ctrl-Shift-I`
- Use **inspect element** or `Ctrl-Shift-C` to select and jump to an element
- you can copy HTML from any website

Simplest html page
------------------
- make a super simple html page, `index.html` which doesn't have tags
``` html
<!-- index.html -->
Orbital wohoo!
```
- HTML is just plain text
- this is incomplete and incorrect, but your browser tries to
    display it anyway

HTML and tags
-------------
- using Sublime Text, just type `html` and press `Tab` to see a barebones
    HTML structure
``` html
<!-- index.html -->
<!DOCTYPE html>
<html>
  <head>
    <title>
    </title>
  </head>
  <body>
  </body>
</html>
```
- `<!DOCTYPE htmL>` requierd for legacy reasons to help browser in rendering
- `<html>` tag defines that this is a html page
- `<title>` title of webpage, shown in search results and browser tab
- `<head>` not seen by users, mainly for computers, e.g. search engine crawlers
- `<body>` what is seen by us, the user

Our project page
----------------
- whatever project you end up doing, you will probably want to build a
    a website to showcase it, let's use that as a starting point
- enter a `title` for the webpage
```html
<title>
  Orbital Project Name - Home
</title>
```
- headers from `h1` to `h6` for varying importance
``` html
<!-- after <body> -->
<h1>
  Project Name
</h1>
```
- `p` stands for paragraph, logical unit of text
``` html
<!-- after </h1> -->
<p>
  Awesomeeeee subtitle!
</p>
```
- `div` is the generic container
``` html
 <!-- after </p> -->
 <div>
   <h2> Installation </h2>
   <p> download this project and open it in your browser </p>
 </div>
 <div>
   <h2> Creators </h2>
   <p> 2 wonderful students from NUS created this </p>
   <p> Me, You </p>
 </div>
```
- HTML ignores whitespace
```html
<!-- under Creators -->
<p> Me,
You
</p>
```
- we can use `br` to for it, but we usually don't cos there are better ways
```html
<!-- under Creators -->
<p> Me,<br>
You
</p>
```
- enter a `em` for emphasis
```html
<!-- under Details -->
<p> It will win <em>best project</em>! <p>
```
- enter a `strong` for stronger emphasis
```html
  <p> 2 <strong>wonderful</strong> students from NUS created this </p>
```
- enter a `nav` for navigation links, nav is essentially like div but it
    gives more meaning, saying that "here be links"
```html
<nav>
</nav>
<!-- before Details -->
```
- a navigation menu is really just a list of links, and we can specify a list
    using `ul` or an unordered list
```html
<!-- after nav -->
<ul>
</ul>
```
- enter a `li` for a list element inside a list
```html
<ul>
  <li> Details </li>
  <li> Installation </li>
  <li> Creators </li>
</ul>
```
- enter a `a` with `href` to to make links
    note the difference in styling of links, blue underline
```html
<ul>
  <li> <a href="#details">Details</a> </li>
  <li> <a href="#installation">Installation</a> </li>
  <li> <a href="#creators">Creators</a> </li>
</ul>
```
- the `#` essentially means, look for something with an id `details` and
    jump there
- to sepcify an `id` attribute for `div`
```html
<div id="details">
<!-- cut -->
<div id ="installation">
<!-- cut -->
<div id ="creators">
```
- enter a `img` with `src` attribute for a screenshot of your project
```html
<!-- before nav -->
```
- enter a `form` with `input`, `submit`
```html
  <div id="feedback">
    <form>
      <input name="q">
      <input type="submit">
    </form>
  </div>
```
- nothing happens when we click submit, so lets change that
- try submitting query to google search first, then submit query to
    own page, this will be implemented later during GAE
```html
  <div id="feedback">
    <form action="www.google.com/search">
      <input name="q">
      <input type="submit">
    </form>
  </div>
```
- make this into a useful feedback form for our page
- use `label` to tell the user what the field is for
```html
<form action="shout">
  <label>
    Email:
    <input name="email">
  </label>
  <label>
    Comments:
    <textarea required name="comments" rows="10" cols="50" placeholder="What do you think?">
    </textarea>
  </label>
  <input type="submit" value="Send">
</form>
```
- use `placeholder` instead of label
```html
<form action="shout">
  <p>
    <input type="email" name="email" placeholder="Email">
  </p>
  <p>
    <textarea required name="comments" rows="10" cols="50" placeholder="What do you think?">
    </textarea>
  </p>
  <p>
    <input type="submit" value="Send">
  </p>
</form>
```

References
----------
- [HTML element reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- [Tutorial on HTML5 forms](www.html5rocks.com/en/tutorials/forms/html5forms/)

