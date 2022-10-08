## README

This directory contains the python scripts used to perform the main analyses from which our results are derived.

1. The `match_vs_chirpmass.py` script performs match calculations between a set of equal mass binary neutron star inspiral signals and binary black hole signals having the same component masses, and saves the data in different text files, corresponding to the equation of state used for the neutron stars. It expects two command line arguments: (1) a string, corresponding to the name of the equation of state for which the simulations are to be performed. The allowed values of choices are "APR", "SLY4", and "BSK21", (2) an input text file with 2 colums, corresponding to the masses and dimensionless tidal deformabilities of the neutron stars for the chosen equation of state. The EoS files for running this analysis are contained in the tarball `datafiles.tar.gz`, and are called `APR-EOS.txt`, `SLY-EOS.txt` and `BSK21-EOS.txt`.

2. The `overlap_mass_lambda.py` script generates the plot on the left panel of Fig. 1 in the accompanying paper. For more details, see the Data Files section of the [data_release.ipynb](https://github.com/sugwg/sub-solar-ns-detectability/blob/main/data_release.ipynb) notebook. 

3. The `template_bank_simulation.py` script performs a set of template bank simulations to compute fitting factors for the class of sources specified in the command line arguments, when they are match-fitlered against a binary black hole template bank for the AdvLIGO noise curve, with component masses lying in the range $m_1,m_2 \in [0.2,1.0] \, M_{\odot}$. One string and two text file arguments are required to run this script. The string argument accepts the choices "bns_rlo", "bns_isco", and "bbh_isco", where "bns" stands for choosing the injected signals to be binary neutron star inspiral signals, and bbh stands for binary black hole signals. Choosing "bns_rlo" would instruct the code to terminate the waveforms at their Roche Lobe overflow frequencies, which are also provided as input at the command line, through input-file2. The files used for the Roche Lobe overflow frequencies are contained in the tarball `datafiles.txt`, and have been elaborated on in the accompanying [data_release.ipynb](https://github.com/sugwg/sub-solar-ns-detectability/blob/main/data_release.ipynb) notebook. The input-file1 is a text file which reads masses and tidal deformabilities for the neutron stars. The equation od state names are not hardwired into template bank simulation code, and the input files can be any text files specifying tidal deformability and Roche Lobe overflow frequency information, as long as they have the required number of columns. 

4. The template bank used in the simulations was generated using the scripts present in the `template-bank-generation` sub-directory.