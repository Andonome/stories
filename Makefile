include config/vars

.PHONY: all
all: check $(RELEASE) cover.pdf

config/vars:
	@git submodule update --init

config/rules.pdf:
	make -C config rules.pdf

$(DBOOK): config/rules.pdf | LOCTEX HANDOUTS STYLE_FILES EXTERNAL qr.tex
	@$(COMPILER) main.tex
	@pdfunite $@ config/rules.pdf /tmp/out.pdf
	@mv /tmp/out.pdf $@

images/extracted/cover.jpg: images/Roch_Hercka/illusion_trogdor.jpg images/extracted/inclusion.tex
	$(CP) $< $@
$(DROSS)/$(BOOK)_cover.pdf: config/cover.tex cover.tex images/extracted/cover.jpg $(DBOOK)
	$(RUN) -jobname $(BOOK)_cover $<
cover.pdf: $(DROSS)/$(BOOK)_cover.pdf
	$(CP) $< $@

.PHONY: clean
clean:
	$(CLEAN)
