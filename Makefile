IMAGES=$(wildcard images/*.svg)

all: src/* $(IMAGES)
	mkdir -p output/html
	mkdir -p output/pdf
	(cd src && exec pdflatex main.tex)
	(cd src && exec pdflatex main.tex)
	(cd src && exec pdflatex main.tex)
	(cd src && exec make4ht -u -c ../my.cfg -e ../main.mk4 main.tex "htm,3,pic-align,notoc*" " -cunihtf -utf8")
	(cd src && exec mv *.svg *.css *.htm ../output/html)
	(cd src && exec mv *.pdf ../output/pdf)
	find ./src -type f -not \( -name '*.tex' -or -name '*.toc' \) -delete

$(IMAGES): %.svg: %.pdf
	prep $@

.PHONY: clean
clean ::
	find ./src -type f -not \( -name '*.tex' -or -name '*.toc' \) -delete
	-rm -rf output
