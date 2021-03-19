all: src/*
	mkdir -p output/html
	mkdir -p output/pdf
	(cd src && exec pdflatex index.tex)
	(cd src && exec pdflatex index.tex)
	(cd src && exec pdflatex index.tex)
	(cd src && exec make4ht -uf html5+mathjaxnode -c ../my.cfg index.tex "html,4")
	(cd src && exec mv *.css *.html ../output/html)
	(cd src && exec cp ../output/pdf/index.pdf ../output/html)
	find ./src -type f -not \( -name '*.tex' \) -delete
	python3 add-pdf-url.py output/html/index.html

.PHONY: clean
clean ::
	find ./src -type f -not \( -name '*.tex' \) -delete
	-rm -rf output
