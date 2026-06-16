.PHONY: init
.PHONY: open
.PHONY: watch

music_ly := $(wildcard music/*/*.ly)
music_svg := $(music_ly:.ly=.svg.stamp)
poem_txt := $(wildcard poems/*/*.txt)
poem_typ := $(wildcard poems/*/*.typ)

artifacts: .anthology.pdf
	mkdir -p artifacts
	cp .anthology.pdf artifacts/anthology.pdf

.anthology.pdf: anthology.typ $(music_svg) $(poem_txt) $(poem_typ)
	typst compile anthology.typ .anthology.pdf

# Stamp files needed as Lilypond generates one SVG per page
$(music_svg): %.svg.stamp: %.ly
	lilypond -dbackend=svg -o $(dir $<) $<
	touch $@

init:
	terraform init
	terraform import github_repository.anthology anthology
	terraform import github_repository_pages.anthology anthology

open: .anthology.pdf
	open -a Skim .anthology.pdf

watch: open
	typst watch anthology.typ .anthology.pdf
