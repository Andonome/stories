include config/vars

output: $(BOOK).pdf

config/vars:
	@git submodule update --init

.PHONY: clean all

qr.tex: README.md config/vars .switch-gls
	@printf '\qrcode[height=.2\\textwidth]{$(QR_TARGET)}' > qr.tex
.switch-gls:
	@touch .switch-gls

config/booklet.pdf:
	make -C config booklet.pdf

$(BOOK).pdf: $(DEPS) | qr.tex config/booklet.pdf
	@$(COMPILER) main.tex
	@pdfunite $(BOOK).pdf config/booklet.pdf /tmp/out.pdf
	@mv /tmp/out.pdf $(BOOK).pdf

.PHONY: all
all: $(BOOK).pdf

clean:
	$(CLEAN)
