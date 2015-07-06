# The variable html_files lists all the html files we want to create from Rmd files.
# All other figures and data files are created automatically as well,
# but we don't keep track of their dependencies.
html_files = extract_peptide_mods.html \
		mods_vs_time.html mods_vs_time_figures.html \
		oxidations.html oxidations_figures.html \
		phosphorylations.html phosphorylations_figures.html

all: $(html_files)

# data dependencies
mods_vs_time.html: extract_peptide_mods.html
mods_vs_time_figures.html: extract_peptide_mods.html mods_vs_time.html
oxidations.html: extract_peptide_mods.html
oxidations_figures.html: extract_peptide_mods.html oxidations.html
phosphorylations.html: extract_peptide_mods.html
phosphorylations_figures.html: extract_peptide_mods.html phosphorylations.html

# options for R when run from the command line
R_OPTS=--no-save --no-restore --no-init-file --no-site-file

# generic rule to render .html files from .Rmd files
%.html: %.Rmd
	R $(R_OPTS) -e "rmarkdown::render('$<')"

.PHONY: clean
clean:
	rm $(html_files)
