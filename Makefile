all: before_install src/*
	mkdir -p output/html
	mkdir -p output/pdf
	(cd src && exec pdflatex index.tex)
	(cd src && exec pdflatex index.tex)
	(cd src && exec pdflatex index.tex)
	(cd src && exec make4ht -uf html5+mjcli+common_domfilters -c ../my.cfg index.tex "html,4")
	(cd src && exec mv *.css *.html ../output/html)
	(cd src && exec cp index.pdf ../output/html)
	find ./src -type f -not \( -name '*.tex' \) -delete
	python3 add-pdf-url.py output/html/index.html

before_install:
	sudo apt-get -qq update && sudo apt-get install -y --no-install-recommends texlive-full pandoc latexmk pdf2svg
	sudo apt-get install python3 python3-pip python3-setuptools
	pip3 install --upgrade pip
	pip3 install beautifulsoup4
	npm -g install mathjax-node-page

.PHONY: clean
clean ::
	find ./src -type f -not \( -name '*.tex' \) -delete
	-rm -rf output
