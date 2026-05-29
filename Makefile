.PHONY: watch

poem_txt := $(wildcard poems/**/*.txt)
poem_typ := $(wildcard poems/**/*.typ)

anthology.pdf: anthology.typ $(poem_txt) $(poem_typ)
	typst compile anthology.typ

watch: anthology.pdf
	open -a Skim anthology.pdf
	typst watch anthology.typ
