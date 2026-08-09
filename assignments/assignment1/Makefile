.PHONY: all
all: index.pdf

TEMPLATE := ../../common/template.tex

index.pdf: index.tex bib.tex $(TEMPLATE)
	@echo "Building all submodules..."
	pandoc index.tex -o index.pdf --template=$(TEMPLATE) --pdf-engine=pdflatex \
		--toc --number-sections -V boxlinks=true --include-after-body=bib.tex

clean:
	@echo "Cleaning all submodules..."
	rm -f index.pdf