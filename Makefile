# texdeps
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################


Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

##################################################################

## Content

Sources += $(wildcard *.pl)
Sources += $(wildcard *.tex *.bib *.md)
Sources += $(wildcard *.R)

test.pdf: test.tex

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include texdeps.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
