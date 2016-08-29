ADDITIONAL_FILE_1_all_pept_fdr1.tsv:
Each row is a PSM identified by MODa; both modified and unmodified peptides are included

Columns (left to right):

DataSet	- MURI AG3C dataset ID
Index - PSM Identifier 	
ObservedMW	- MODa Observed Peptide Molecular Weight 
Charge	- MODa Peptide Charge
CalculatedMW - MODa Calculated Peptide Molecular Weight (INCLUDING modifications)
DeltaMass - ObservedMW minus Calculated MW
Score - MODa peptide match score
Probability - MODa peptide probability
Peptide	- Peptide sequence of matching PSM; Z.XXX[+Y]XXX.Z where X is the observed sequence, Z is the Nt- and Ct- residues prior to tryptic cleavage (i.e. not included in PSM) and Y is the MODa-identified mass shift, putatively located on the residue immediately left of the brackets
giID - Old NCBI protein ID	
PeptideStart - beginning AA residue of the PSM relative to start of the protein
PeptideEnd - end AA residue of the PSM relative to the start of the protein
Start - beginning of gene coding for the protein in genomic (nucleotide) coordinates
Stop - end of the gene coding for the protein in genomic (nucleotide) coordinates
Strand - strand of the gene coding for the protein
XXXGeneID - 
Locus - Abbreviated (4-letter) gene name	
LocusTag - Ecocyc gene ID
ProteinProduct_x - Protein Accession
Length - length of the gene coding for the protein in nucleotides
ProteinName	- Full name of the protein
Time - Hours Post-Inoculation that the sample the PSM originated from was collected
BiolRep	- Biological replicate of the sample the PSM originated from 
XXXTechRep	
PeptideSeq - Sequence of the PSM peptide as observed (i.e. no cleaved residues, no annotated modifications)	
MassShift - The mass shift called by MODa for this PSM; 0 == no modification
ModifiedPosition - Position (relative to Nt start of the PEPTIDE) bearing the modification. -1 == no modification
ModifiedResidue	- Residue type bearing the putative modification; “-“ == no modification
CalculatedUnmodMW - Calculated mass of the UNMODIFIED peptide; will be equal to “CalculatedMW” for peptide with no predicted modification
ModPosn_ProtCoord - Location of the modification relative to the Nt start of the PROTEIN; note that these coordinates start at 2 for proteins with a  cleaved N-terminal Met

================

ADDITIONAL_FILE_2_modification_totals_sorted.tsv:
Each row represents pooled results for all PSMs called by MODa as bearing a single mass shift.  Sorted from top to bottom by Mean, largest numbers at the top.

Columns:
MassShift - The identified mass shift
1 - Total count of all PSMs called by MODa as bearing the mass shift in Biological Replicate 1
2 - Total count of all PSMs called by MODa as bearing the mass shift in Biological Replicate 2
3 - Total count of all PSMs called by MODa as bearing the mass shift in Biological Replicate 3
Mean - Mean of PSM counts across all three biological replicates

================

ADDITIONAL_FILE_3_mass_shifts_by_AA.tsv:

Rows are counts of the modification indicated in the left-most column, pooled across all time points in the dataset.  

Each column contains the counts of PSMs called by MODa as bearing that mass shift at the residue indicated in the top header row (“ModifiedResidue”) in the biological replicate indicated by the number in the second header row (“BiolRep”, 1, 2, or 3)

Rows are in order from top to bottom with lightest (including negative mass shift / mass loss) at the top.

================

ADDITIONAL_FILE_4_MODa_NtAcProteins.tsv
ADDITIONAL_FILE_5_MODa_129DaGluProteins.tsv
ADDITIONAL_FILE_6_MODa_1DaAspProteins.tsv
ADDITIONAL_FILE_7_MODa_16DaMetProteins.tsv
ADDITIONAL_FILE_8_MODa_16DaTrpProteins.tsv

Rows represent individual residue positions bearing the modification indicated in the filename.  Rows are ordered by mean p-value across all three replicates in the Fisher’s Exact Test for difference in modification between exponential and stationary phase samples (See Methods in main text for details).

Columns:

Columns 1-5:
LocusTag: Ecocyc gene ID (unique gene identifier)
Locus: Abbreviated (4-letter) gene name
ModPosn_ProtCoord: Location of the modification relative to the Nt start of the PROTEIN; note that these coordinates start at 2 for proteins with a  cleaved N-terminal Met
ModifiedResidue: Residue type bearing the putative modification; “-“ == no modification
MassShift: The mass shift called by MODa for this PSM; 0 == no modification

Columns 6-18:
For each of the three biological replicates (indicated in the top header line “BiolRep”):

ExpMod: Count of PSMs were the position is modified, pooled across Exponential-phase timepoints
ExpUnmod: Count of PSMs were the position is NOT modified, pooled across Exponential-phase timepoints
Syamod: Count of PSMs were the position is modified, pooled across Staionary-phase timepoints
StaUnmod: Count of PSMs were the position is NOT modified, pooled across Stationary-phase timepoints
twotail_pValue: p-Value from the Fisher’s exact test using the above four values for the 2x2 contingency table
FET_logodds: statistic value from the Fisher’s exact test

Column 19:

ParentPeptides: Annotated sequences for all PSMs that include the modification

Columns 20-22:
Total Overall: All modified and unmodified PSM counts for this position pooled across all time points
Total Exponential: All modified and unmodified PSM counts for this position pooled across Exponential-phase time points
Total Stationary: All modified and unmodified PSM counts for this position pooled across Stationary-phase time points

Columns 22-25:
Modified Overall: All modified PSM counts for this position pooled across all time points
Modified Exponential: All modified PSM counts for this position pooled across Exponential-phase time points
Modified Stationary: All modified PSM counts for this position pooled across Stationary-phase time points

Columns 26-28:
Total Overall: (Modified Overall / Total Overall) * 100
Total Exponential: (Modified Exponential / Total Exponential) * 100
Total Stationary: (Modified Stationary / Total Stationary) * 100

Column 29:
Mean twotail_pValue: mean of the twotail_pValue columns for all three biological replicates; used for ordering only
 
