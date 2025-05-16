EXTERNAL_REFERENTS = core

include config/vars

config/vars:
	@git submodule update --init

config/rules.pdf: config/character_sheets.pdf
	make -C $(@D) $(@F)

config/character_sheets.pdf: config/vars
	make -C $(@D) $(@F)
$(DBOOK): $(DEPS) qr.tex .switch-gls

$(TITLE).pdf: $(DBOOK) config/rules.pdf config/character_sheets.pdf
	pdfjam --pdftitle $(TITLE) --pdfsubject "BIND RPG" \
	--pdfkeywords "RPG,TTRPG,roleplaying" \
	$^ \
	--outfile $@

images/extracted/cover.jpg: images/Roch_Hercka/illusion_trogdor.jpg images/extracted/inclusion.tex
	$(CP) $< $@
$(DROSS)/$(BOOK)_cover.pdf: config/cover.tex cover.tex images/extracted/cover.jpg $(DBOOK)
	$(RUN) -jobname $(BOOK)_cover $<
cover.pdf: $(DROSS)/$(BOOK)_cover.pdf
	$(CP) $< $@

targets += cover.pdf

