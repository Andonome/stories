include config/vars

.PHONY: all
all: check $(RELEASE)

config/vars:
	@git submodule update --init

config/rules.pdf:
	make -C config rules.pdf

$(DBOOK): config/rules.pdf | LOCTEX HANDOUTS STYLE_FILES EXTERNAL qr.tex
	@$(COMPILER) main.tex
	@pdfunite $@ config/rules.pdf /tmp/out.pdf
	@mv /tmp/out.pdf $@

.PHONY: clean
clean:
	$(CLEAN)
