.PHONY: init
.PHONY: open
.PHONY: watch

poem_txt := $(wildcard poems/**/*.txt)
poem_typ := $(wildcard poems/**/*.typ)

artifacts: .anthology.pdf
	mkdir -p artifacts
	cp .anthology.pdf artifacts/anthology.pdf

.anthology.pdf: anthology.typ $(poem_txt) $(poem_typ)
	typst compile anthology.typ .anthology.pdf

init:
	terraform init
	terraform import github_repository.anthology anthology
	terraform import github_repository_pages.anthology anthology

open: .anthology.pdf
	open -a Skim .anthology.pdf

watch: open
	typst watch anthology.typ .anthology.pdf
