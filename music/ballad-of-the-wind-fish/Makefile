.PHONY: open
.PHONY: watch

score.pdf: score.ly
	lilypond score.ly

open: score.pdf
	open -a Skim.app score.pdf

watch: open
	echo score.ly | entr make
