## Location to install the binary into.  
DST=$(HOME)/bin

## Needed to create html or pdf of README file
RST2TEX=/usr/bin/rst2newlatex
RST2HTML=/usr/bin/rst2hmtl
LATEX=/usr/bin/pdflatex

install:
	[ -d "$(DST)" ] || mkdir $(DST)
	cp r-torque $(DST)
	chmod 774 $(DST)/r-torque

## Requires docutils to be installed
doc: README.pdf README.html

README.pdf: README
	$(RST2TEX) README README.tex
	$(LATEX) README.tex 
	rm README.log README.out README.aux README.tex

README.html: README
	$(RST2HTML) README README.html

.PHONY: install doc
