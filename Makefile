TEXFILE ?= templates/document
OUTPUT ?= build

all: $(TEXFILE).pdf

$(TEXFILE).pdf:
	@mkdir -p $(OUTPUT)
	latexmk -pdf -output-directory=$(OUTPUT) $(TEXFILE).tex

clean:
	latexmk -C
	rm -rf $(OUTPUT)

watch:
	latexmk -pdf -pvc -output-directory=$(OUTPUT) $(TEXFILE).tex
