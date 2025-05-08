TEXFILE ?= templates/document
OUTPUT ?= build
LATEX ?= xelatex  # or lualatex

all: $(TEXFILE).pdf

$(TEXFILE).pdf:
	@mkdir -p $(OUTPUT)
	latexmk -$(LATEX) -output-directory=$(OUTPUT) $(TEXFILE).tex

clean:
	latexmk -C
	rm -rf $(OUTPUT)

watch:
	latexmk -pvc -$(LATEX) -output-directory=$(OUTPUT) $(TEXFILE).tex
