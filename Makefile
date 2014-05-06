SUB=<!--REPLACE-->
TMPL=template.html

all: clean pandoc template

# use pandoc to convert md to html files
# turn off highlight for code since it conflicts with reveal.js
pandoc: README.md html-notes.md css-notes.md git-notes.md
	pandoc README.md     -o README.html     --no-highlight
	pandoc html-notes.md -o html-notes.html --no-highlight
	pandoc css-notes.md  -o css-notes.html  --no-highlight
	pandoc git-notes.md  -o git-notes.html  --no-highlight
	pandoc resources.md  -o resources.html  --no-highlight

# get contents from our notes html file into the template file
# the template file contains boiler plate for the slide
# so each resulting html is itself a reveal.js slide
template: html-notes.html css-notes.html
	sed -e '/$(SUB)/r README.html'     -e '/$(SUB)/d' $(TMPL) > index.html
	sed -e '/$(SUB)/r html-notes.html' -e '/$(SUB)/d' $(TMPL) > html-slides.html
	sed -e '/$(SUB)/r css-notes.html'  -e '/$(SUB)/d' $(TMPL) > css-slides.html
	sed -e '/$(SUB)/r git-notes.html'  -e '/$(SUB)/d' $(TMPL) > git-slides.html
	sed -e '/$(SUB)/r resources.html'  -e '/$(SUB)/d' $(TMPL) > resources-slides.html
	rm -rf README.html
	rm -rf html-notes.html
	rm -rf css-notes.html
	rm -rf git-notes.html
	rm -rf resources.html


.PHONY: clean

clean:
	rm -f index.html html-slides.html css-slides.html git-notes.html resources-slides.html
