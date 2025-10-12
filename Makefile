LY_FILES := $(wildcard */*.ly)
PDFS := $(LY_FILES:.ly=.pdf)
SVGS := $(LY_FILES:.ly=.svg)

all: $(PDFS) $(SVGS)

%.pdf: %.ly
	lilypond -o $(dir $<) $<

%.svg: %.ly
	lilypond -dbackend=svg -o $(dir $<) $<

clean:
	rm -f */*.pdf */*.svg

watch:
	find . -name "*.ly" | entr -c make

.PHONY: all clean watch