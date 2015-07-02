Complete post-processing pipeline for MODa output
=================================================

To re-run the entire analysis, please knit the `.Rmd` files in this folder, in this order:

1. `extract_peptide_mods.Rmd`  -- Takes MODa per-peptide output and cleans it up for easy downstream analysis.
	Knitting this can take a few hours, be patient. (You can check on the progress by looking at the file
	`Rscript.log`.)
2. `mods_vs_time.Rmd` -- Creates summary table of all modifications over time, needed for `mods_vs_time_figures.Rmd`.
2. `mods_vs_time_figures.Rmd` -- Draws plots of various mods over time.

Note that all samples to be processed are stored in the file `samples.csv` in this folder. Update this file if you want to run this pipeline on a different set of samples. 
 
