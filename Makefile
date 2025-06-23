EXTERNAL_REFERENTS = core

DEPS += $(wildcard *.tex)

targets += cyoa_pit.pdf
output += booklets

include config/common.mk

config/common.mk:
	@git submodule update --init

config/rules.pdf: | config/common.mk
	make -C $(@D) $(@F)

config/character_sheets.pdf: config/rubbish/.count.tex | config/common.mk
	make -C $(@D) $(@F)
$(DBOOK): $(DEPS) qr.tex .switch-gls

$(TITLE).pdf: $(DBOOK) config/rules.pdf config/character_sheets.pdf
	pdfjam --pdftitle $(TITLE) --pdfsubject "BIND RPG" \
	--pdfkeywords "RPG,TTRPG,roleplaying" \
	$^ \
	--outfile $@

images/extracted/cover.jpg: images/Roch_Hercka/illusion_trogdor.jpg images/extracted/inclusion.tex
	$(CP) $< $@
$(DROSS)/$(BOOK)_cover.pdf: config/share/cover.tex cover.tex images/extracted/cover.jpg $(DBOOK)
	$(RUN) -jobname $(BOOK)_cover $<
cover.pdf: $(DROSS)/$(BOOK)_cover.pdf
	$(CP) $< $@

##########

number_of_parts != ls cyoa/pt_* | wc -l

zine_batch_one != seq 1 4 $(number_of_parts) | sort -R | tr '\n' ' '
zine_batch_two != seq 2 4 $(number_of_parts) | sort -R | tr '\n' ' '
zine_batch_three != seq 3 4 $(number_of_parts) | sort -R | tr '\n' ' '
zine_batch_four != seq 4 4 $(number_of_parts) | sort -R | tr '\n' ' '
zine_part_nums = $(zine_batch_three) $(zine_batch_one) $(zine_batch_two) $(zine_batch_four)
zine_part_names = $(patsubst %, cyoa/pt_%.tex, $(zine_part_nums))

booklets/a7_cyoa_pit.tex: cyoa/head.tex $(zine_part_names) | booklets/
	cat $^ > $@
	printf '%s\n' '\end{document}' >> $@

a7_cyoa_pit.pdf: ## Make a screen-readable minizine.
