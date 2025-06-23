# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?= -j auto
SPHINXBUILD   ?= python3 -msphinx
SPHINXSERV    ?= sphinx-autobuild
SPHINXINTL    ?= sphinx-intl
SOURCEDIR     = .
BUILDDIR      = _build
LOCALEDIR     = locale
LANG          = en_US.UTF-8
MAKE          = make

default: html

view:
	xdg-open "$(BUILDDIR)/html/index.html"

zh:
	$(MAKE) html
	$(MAKE) latexpdf

en:
	$(MAKE) gettext
	$(SPHINXINTL) update --pot-dir $(BUILDDIR)/gettext \
						 --locale-dir $(LOCALEDIR) \
						 --language $@ \
						 --jobs 1 # job=1 to prevent panic
	$(MAKE) html SPHINXOPTS=-Dlanguage=$@
	$(MAKE) latexpdf SPHINXOPTS=-Dlanguage=$@

help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: default view help zh en po

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
