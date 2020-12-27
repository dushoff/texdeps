# texdeps
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources += Makefile .gitignore README.md
# include makestuff/perl.def

vim_session: 
	bash -cl "vmt makestuff/texi.mk makestuff/texdeps.mk"

##################################################################

Ignore += webpix
wrap_makeR = something

## Content

Sources += $(wildcard *.pl *.R)
Sources += $(wildcard *.tex *.bib *.md)

pic.tex.pdf: pic.tex
pic.pdf: pic.tex

## A file with a bibliography
proposal.pdf: proposal.tex

## Need to try a biber file

## A file that includes another file
## The other file includes a made plot
test.pdf: test.tex

## A beamer file: experiment with nav stuff
## Also, stuff in other directories
intro.pdf: intro.tex
webpix: dir = ~/Dropbox/courses/1M
webpix:
	$(linkdir)

#### Rules for testing stuff
test.deptest: test.tex texdeps.pl
%.deptest: .texdeps/%.mk texdeps.pl
	$(copy)

texclean:
	rm -fr .texdeps *.pdf *.aux *.log *.nav *.out *.snm *.toc

######################################################################

msrepo = https://github.com/dushoff

Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls makestuff/Makefile

-include makestuff/os.mk

## -include makestuff/texdeps.mk
-include makestuff/texi.mk
-include makestuff/makeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
