Setting up MODa runs (to convert mass-spec raw data to MODa output)
===================================================================

To run MODa, visit http://prix.hanyang.ac.kr/download/moda.jsp to buy the license (If you work for academia, then it's free). The version we used for this analysis is MODa 1.23

1.Set-up MODa search parameters

An example search parameter file is provided here: mzXML2MODa_searchParameters.txt
(for this you need fasta file, that has decoy sequences too)

2.Run MODa

For this you need the raw data (mzXML format) and the search parameters. An example Run file is provided here:
MODa_run2get_UnprocessedData.bat
(this generates output file MURI_100b_MODa_PSMs.txt that has all MODa hits)

3.Filter MODa hits

Next, we need to filter out the hits, by setting a FDR threshold. Here we used 1% FDR threshold. An example filter file is provided here:
MODa_runOnUnprocessed2getProcessedOutput.bat
(this generates 2 output files, that has 
  (a) filtered peptide spectral matches (MURI_100b_MODa_PSMs.id.txt) and 
  (b) matrix of mass-shifts (MURI_100b_MODa_PSMs.ptm.txt) versus amino-acids (AAs) for all PSMs (peptide spectral matches))

The output files generated in (3) are the input files for the scripts in Analysis_Pipeline.

