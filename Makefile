IMAGES=$(wildcard images/*.svg)

all: src/* $(IMAGES)
	mkdir -p output/html
	mkdir -p output/pdf
	(cd src && exec pdflatex index.tex)
	(cd src && exec pdflatex index.tex)
	(cd src && exec pdflatex index.tex)
	(cd src && exec make4ht -uf html5+mathjaxnode -c ../my.cfg index.tex "html,3")
	(cd src && exec mv *.css *.html ../output/html)
	(cd src && exec mv *.pdf ../output/pdf)
	find ./src -type f -not \( -name '*.tex' \) -delete

$(IMAGES): %.svg: %.pdf
	prep $@

.PHONY: clean
clean ::
	find ./src -type f -not \( -name '*.tex' \) -delete
	-rm -rf output
