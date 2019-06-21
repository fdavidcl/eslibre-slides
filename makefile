EXE: $(patsubst %.md, %.pdf, $(wildcard *.md))

%.pdf: %.md
	pandoc $< -o $@ -t beamer --pdf-engine=xelatex
