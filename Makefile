include config/vars

.PHONY: all
all: $(DBOOK)

config/vars:
	@git submodule update --init

config/booklet.pdf:
	make -C config booklet.pdf

$(DBOOK): LOCTEX HANDOUTS STYLE_FILES config/booklet.pdf | qr.tex
	@$(COMPILER) main.tex
	@pdfunite $@ config/booklet.pdf /tmp/out.pdf
	@mv /tmp/out.pdf $@

.PHONY: clean
clean:
	$(CLEAN)
