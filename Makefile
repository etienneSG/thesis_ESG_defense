# Name of the generated pdf
PDF_NAME=2018-12_Soutenance_ESG
TEX_NAME=template_diapo
CLASS_NAME=diapo
OUT_DIR=auxiliary_files

# Paths of sections and images
IMG_PATH=images

all: pdf change_name

IMG_LIST=$(wildcard $(IMG_PATH)/*)

pdf: $(TEX_NAME).tex $(TEX_NAME).bib $(CLASS_NAME).cls math_command.tex template_theme.tex $(IMG_LIST)
	@mkdir -p $(OUT_DIR)
	pdflatex -output-directory=$(OUT_DIR) $(TEX_NAME).tex
	bibtex $(OUT_DIR)/$(TEX_NAME)
	pdflatex -output-directory=$(OUT_DIR) $(TEX_NAME).tex
	pdflatex -output-directory=$(OUT_DIR) $(TEX_NAME).tex

update: $(TEX_NAME).tex $(TEX_NAME).bib $(CLASS_NAME).cls math_command.tex template_theme.tex $(IMG_LIST)
	@mkdir -p $(OUT_DIR)
	pdflatex -output-directory=$(OUT_DIR) $(TEX_NAME).tex
	@mv $(OUT_DIR)/$(TEX_NAME).pdf $(PDF_NAME).pdf

change_name:
	@mv $(OUT_DIR)/$(TEX_NAME).pdf $(PDF_NAME).pdf

clean:
	@find . -name '*~' -exec rm '{}' \;
	@rm -r $(OUT_DIR)

