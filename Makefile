SUB=<!--REPLACE-->
TMPL=template.html

# use pandoc to convert md to html files
# turn off highlight for code since it conflicts with reveal.js
pandoc: README.md html-notes.md css-notes.md
	pandoc README.md -o index.html --no-highlight
	pandoc html-notes.md -o html-notes.html --no-highlight
	pandoc css-notes.md -o css-notes.html --no-highlight

template: html-notes.html css-notes.html
	sed -e '/$(SUB)/r index.html'      -e '/$(SUB)/d' $(TMPL) > slides/index.html
	sed -e '/$(SUB)/r html-notes.html' -e '/$(SUB)/d' $(TMPL) > slides/html-index.html
	sed -e '/$(SUB)/r css-notes.html'  -e '/$(SUB)/d' $(TMPL) > slides/css-index.html
	rm -rf index.html
	rm -rf html-notes.html
	rm -rf css-notes.html

all: pandoc template

.PHONY: clean

clean:
	rm -f index.html html-notes.html css-notes.html slides/index.html slides/html-index.html slides/css-index.html
