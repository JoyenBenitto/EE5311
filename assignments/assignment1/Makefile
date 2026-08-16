.PHONY: all
all: index.pdf

TEMPLATE := ../../common/template.tex

index.pdf: index.tex $(TEMPLATE)
	@echo "Building all submodules..."
	pandoc index.tex -o index.pdf --template=$(TEMPLATE) --pdf-engine=pdflatex \
		--toc --number-sections -V boxlinks=true -V graphics=true

clean: clean-release
	@echo "Cleaning all submodules..."
	rm -f index.pdf

include ../../common/release.mk