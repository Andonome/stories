EXTERNAL_REFERENTS = core

DEPS += $(wildcard *.tex)

targets += minizine.pdf
output += minizine

include config/vars

config/vars:
	@git submodule update --init

config/rules.pdf: | config/vars
	make -C $(@D) $(@F)

config/character_sheets.pdf: | config/vars
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

##########

number_of_parts != ls cyoa/pt_* | wc -l

zine_batch_one != seq 1 3 $(number_of_parts) | sort -R | tr '\n' ' '
zine_batch_two != seq 2 3 $(number_of_parts) | sort -R | tr '\n' ' '
zine_batch_three != seq 3 3 $(number_of_parts) | sort -R | tr '\n' ' '
zine_part_nums = $(zine_batch_three) $(zine_batch_two) $(zine_batch_one)
zine_part_names = $(patsubst %, cyoa/pt_%.tex, $(zine_part_nums))

a7_minizine/main.tex: cyoa/head.tex $(zine_part_names) | a7_minizine/
	cat $^ > $@
	printf '%s\n' '\end{document}' >> $@

a7_minizine.pdf: ## Make a screen-readable minizine.
