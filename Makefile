PAPER = matched_sampling

all: ${PAPER}.pdf

${PAPER}.pdf: ${PAPER}.tex
	pdflatex ${PAPER}.tex
	bibtex $(PAPER)
	pdflatex ${PAPER}.tex
	pdflatex ${PAPER}.tex
clean:
	rm -f ${PAPER}.aux ${PAPER}.blg ${PAPER}.pdf ${PAPER}.log ${PAPER}.out \
	    ${PAPER}.nav
