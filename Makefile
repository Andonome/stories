EXTERNAL_REFERENTS = core

include config/vars

config/vars:
	@git submodule update --init

config/rules.pdf:
	make -C config rules.pdf

config/character_sheets.pdf: | config/vars
	make -C config character_sheets.pdf
$(DBOOK): $(DEPS) LOCTEX HANDOUTS STYLE_FILES | qr.tex .switch-gls
	@$(COMPILER) main.tex
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

