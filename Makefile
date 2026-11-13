.PHONY: all clean

all:
	xelatex -interaction=nonstopmode main.tex
	xelatex -interaction=nonstopmode main.tex

clean:
	rm -f main.aux main.fdb_latexmk main.fls main.log main.out main.xdv
