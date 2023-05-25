LTXARGS = -pdf -lualatex -use-make -interaction=nonstopmode

%.tex: .FORCE
	cd $(dir $@) && latexmk $(LTXARGS) $(notdir $@)

.FORCE:
