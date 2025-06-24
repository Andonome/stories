EXTERNAL_REFERENTS = core

vpath a7_%.tex booklets

DEPS += $(wildcard *.tex)

base_files = $(wildcard races/*.tex)
booklets = $(patsubst races/%.tex, booklets/a7_%.tex, $(base_files) )
guides = $(patsubst races/%.tex, %.pdf, $(base_files) )

targets += $(guides)
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

booklets/%.tex: races/%.tex images/extracted/%.jpg | booklets/
	printf '%s\n' '\documentclass[10pt,twoside]{book}' > $@
	printf '%s\n' '\usepackage{config/bind}' >> $@
	printf '%s\n' '\usepackage{config/booklet}' >> $@
	printf '%s\n' '\externalReferent{core}' >> $@
	printf '%s\n' '\input{commands.tex}' >> $@
	printf '%s\n' '\begin{document}' >> $@
	printf '%s\n' '\miniCover{\MakeUppercase $(basename $(@F))}{\begin{minipage}{.3\linewidth}\pic{extracted/$(basename $(@F))}\end{minipage}}%' >> $@
	printf '%s\n' '\pagebreak\namesfor$(basename $(@F))\pagebreak' >> $@
	printf '%s\n' '\pagestyle{minizine}' >> $@
	printf '%s\n' '\input{$<}' >> $@
	printf '%s\n' '\end{document}' >> $@

images/extracted/gnomes.jpg: images/Roch_Hercka/five_races.jpg | images/extracted/
	magick $< -crop 460x1000+55+300 -bordercolor black -border 20x20 - > $@

images/extracted/dwarves.jpg: images/Roch_Hercka/five_races.jpg | images/extracted/
	magick $< -crop 530x1150+530+280 -bordercolor black -border 20x20 - > $@

images/extracted/humans.jpg: images/Roch_Hercka/five_races.jpg | images/extracted/
	magick $< -crop 530x1500+1200+20 -bordercolor black -border 20x20 - > $@

images/extracted/elves.jpg: images/Roch_Hercka/five_races.jpg | images/extracted/
	magick $< -crop 470x1400+1760+85 -bordercolor black -border 20x20 - > $@

images/extracted/gnolls.jpg: images/Roch_Hercka/five_races.jpg | images/extracted/
	magick $< -crop 640x1400+2230+90 -bordercolor black -border 20x20 - > $@


$(booklets): booklets/a7_%.tex: booklets/%.tex
	$(CP) $< $@

.PHONY: guides
guides: $(guides) ## Minizine guides to each race

