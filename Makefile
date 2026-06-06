.PHONY: open
.PHONY: tfimport
.PHONY: watch

poem_txt := $(wildcard poems/**/*.txt)
poem_typ := $(wildcard poems/**/*.typ)

anthology.pdf: anthology.typ $(poem_txt) $(poem_typ)
	typst compile anthology.typ

tfimport:
	terraform import github_repository.anthology anthology

open: anthology.pdf
	open -a Skim anthology.pdf

watch: open
	typst watch anthology.typ
