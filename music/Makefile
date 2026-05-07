LY_FILES := $(wildcard */*.ly)
PDFS := $(LY_FILES:.ly=.pdf)
SVGS := $(LY_FILES:.ly=.cropped.svg)

all: $(PDFS) $(SVGS)

%.pdf: %.ly
	lilypond -o $(dir $<) $<

%.cropped.svg: %.ly
	lilypond -dbackend=svg -dcrop -dno-print-pages -o $(dir $<) $<
	awk 'NR==4{print "svg { background-color: white; }"}1' $(basename $@).svg > tmp.svg && mv tmp.svg $(basename $@).svg

clean:
	rm -f */*.pdf */*.svg

watch:
	find . -name "*.ly" | entr -c make

.PHONY: all clean watch