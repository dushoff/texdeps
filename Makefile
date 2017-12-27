# texdeps
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources += Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

##################################################################

## Content

Sources += $(wildcard *.pl)
Sources += $(wildcard *.tex *.bib *.md)
Sources += $(wildcard *.R)

## A simple file with nothing going on. Should be easy.
simple.pdf: simple.tex

## A picture that needs to be made by R
pic.pdf: pic.tex

## A file with a bibliography
proposal.pdf: proposal.tex
## This is _approximately_ working
## There are problems with this particular bib
## also questions about bibtex vs. biber
## Postponing a bit

## A file that includes another file
## The other file includes a made plot
test.pdf: test.tex

#### Rules for testing stuff
test.deptest: test.tex texdeps.pl
%.deptest: .texdeps/%.mk texdeps.pl
	$(copy)

texclean:
	rm -fr .texdeps *pdf

######################################################################

-include $(ms)/texdeps.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk


-include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
