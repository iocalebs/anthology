.PHONY: watch

anthology.pdf: anthology.html
	"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
	--headless \
	--disable-gpu \
	--no-pdf-header-footer \
	--print-to-pdf=anthology.pdf \
	anthology.html

watch:
	open -a Skim anthology.pdf 
	ls anthology.html | entr -r make 
