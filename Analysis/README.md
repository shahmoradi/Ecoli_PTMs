## Scripts (in the form of python Jupyter notebooks) to recreate the analysis and figures from the paper "Large Scale Analysis of Post-Translational Modifications in E. Coli During Glucose Starvation" by Brown et. al. (2016).

### Still a work in progress, please contact Colin Brown (colin.walsh.brown@gmail.com) with any issues or questions

Run instructions:

Dependencies:
- jupyter version XXX
- numpy / scipy version XXX
- python 2.7 version XXX
- pandas version XXX

1.) Unzip `data/MURI_all.id.txt.tar.gz`:
  
    `$ tar -xvzf data/MURE_all.id.txt.tar.gz`
    
2.) Open the notebook `parse_MODa.ipynb` and select "Run All" from the "Cell" menu

    `$ jupyter notebook` # from within the Analysis directory
  
    Select `parse_MODa.ipynb`
    
    Select Cell->Run All
    
    Should generate file `data/all_pept.tsv` 

3.) Run the rest of the notebooks in the following order:

  `build_high_conf_mass_shift_set.ipynb`
  
  `plot_allmod_x_time.ipynb`
  
  `mod_spectrum_tables.ipynb`
  
  `massshift_temporal_changes.ipynb`
  
  Figure images will appear inline, and image files & tables will be generated in the `figures/` and `data/` directory
