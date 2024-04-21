files_tex:=$(shell find . -name 'main.tex')
files_pdf:=$(files_tex:.tex=.pdf)

all: $(files_pdf)

%.pdf: %.tex .FORCE
	OUTPUT_FILE=$(shell dirname $<) ;\
	OUTDIR=${abspath .}/build; \
	mkdir -p $${OUTDIR}; \
	latexmk -outdir=$${OUTDIR} -jobname=$${OUTPUT_FILE} -r .latexmkrc -cd $< -silent; CODE=$$?; \
	[ "$$CODE" != 0 ] && tail -n 50 ./build/$${OUTPUT_FILE}.log; \
	exit $$CODE

clean:
	@rm -rf build/

.FORCE:
