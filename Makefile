.PHONY: watch

anthology.pdf: anthology.typ
	typst compile anthology.typ

watch:
	open -a Skim anthology.pdf 
	typst watch anthology.typ
