# Detectability of Sub-Solar Mass Neutron Stars Through a Template Bank Search

**Ananya Bandopadhyay<sup>1</sup>, Brendan Reed<sup>2,3</sup>, Surendra Padamata<sup>4,5</sup>, Erick Leon<sup>1</sup>, C.J. Horowitz<sup>3</sup>, Duncan A. Brown<sup>1</sup>, David Radice<sup>4,5,6</sup>, F.J. Fattoyev<sup>7</sup>, J. Piekarewicz<sup>8</sup>**

**<sup>1</sup>Department of Physics, Syracuse University, Syracuse, NY 13244, USA**

**<sup>2</sup>Department of Astronomy, Indiana University, Bloomington, IN 47405, USA**

**<sup>3</sup>Center for Exploration of Energy and Matter and Department of Physics, Indiana University, Bloomington, IN 47405, USA**

**<sup>4</sup>Institute for Gravitation and the Cosmos, The Pennsylvania State University, University Park, PA 16802, USA**
    
**<sup>5</sup>Department of Physics, The Pennsylvania State University, University Park, PA 16802, USA**

**<sup>6</sup>Department of Astronomy & Astrophysics, The Pennsylvania State University, University Park, PA 16802, USA**

**<sup>7</sup>Physics Department, Manhattan College, Riverdale, NY 10471, USA**

**<sup>8</sup>Department of Physics, Florida State University, Tallahassee, FL 32306, USA**

## License

![Creative Commons License](https://i.creativecommons.org/l/by-sa/3.0/us/88x31.png "Creative Commons License")

This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 United States License](http://creativecommons.org/licenses/by-sa/3.0/us/).


## Introduction

This repository is a companion to the paper posted at <span style="color:red;">add URL</span>, which examines the effect of the finite size of neutron stars on the detectability of gravitational wave signals emitted by inspiralling sub solar-mass binary neutron star systems, using template bank searches. It provides the data files generated from the analysis, and demonstrates how to use these to generate the figures in the paper. 
The figures in the notebook serve to corroborate the results from the paper, illustrating the loss in sensitivity of the Advanced LIGO detectors to signals from these sources, on neglecting the tidal deformability and lower merger frequencies of neutron stars in the search templates.

## Data Files

A brief description of the data files used to generate the figures is provided below: 

(1) `q1_isco_data.txt`: contains match values (column 3) between injected equal mass binary neutron star inspiral signals and binary black hole signals having the same component masses, as a function of chirp mass (column 1) and effective tidal deformability (column 2) of the binary neutron star system.  

(2) In the next three data files, each of which is a 7-column dataset with column headings as follows:
`chirp-mass`, `match`, `mass1`, `mass2`, `lambda1`, `lambda2`, `Schwarzschild ISCO frequency`,
we have listed the calculated values of match between injected equal mass binary neutron star signals and binary black hole signals having the same component masses, wherein the tidal deformabilities of the neutron stars are derived from the equations of state referenced below. The first 2 columns in each of these three files are used to generate the plot on the right hand panel of Figure 1.
   
   a. `mchirp_vs_match_APR_745320.0.txt`: $\Lambda_1$, $\Lambda_2$ used in the match computations are derived from the [APR](https://journals.aps.org/prc/abstract/10.1103/PhysRevC.58.1804) equation of state.

   b. `mchirp_vs_match_SLY4_745321.0.txt`: $\Lambda_1$, $\Lambda_2$ used in the match computations arevderived from the [SLy4](https://www.aanda.org/articles/aa/abs/2001/46/aa1755/aa1755.html) equation of state.

   c. `mchirp_vs_match_BSK21_745322.0.txt`: $\Lambda_1$, $\Lambda_2$ used in the match computations are derived from the [BSk21](https://www.aanda.org/articles/aa/full_html/2013/12/aa21697-13/aa21697-13.html) equation of state.
   
(3) The equation of state files tabulate `neutron star mass` ( $m (M_{\odot}$ )) and the corresponding `tidal deformability` ( $\Lambda$ ) computed using modules from the publicly available library [LALSimulation](https://lscsoft.docs.ligo.org/lalsuite/lalsimulation/index.html). 

   a. `APR-EOS.txt` : mass and tidal deformability values for the APR equation of state.
   
   b. `SLY-EOS.txt` : mass and tidal deformability values for the SLy4 equation of state.
   
   c. `BSK21-EOS.txt` : mass and tidal deformability values for the BSk21 equation of state.
   
(4) The mass-radius files contain `NS masses`($m (M_{\odot}$)) and the corresponding `radii`(km), evaluated by integrating the Tolman-Oppenheimer-Volkoff equations, for the APR, SLy4 and BSk21 equations of state. 

   a. `APR-mass-radius.txt` : neutron star mass and radius values for the APR equation of state.
   
   b. `SLY4-mass-radius.txt` : neutron star mass and radius values for the SLy4 equation of state.
   
   c. `BSK21-mass-radius.txt` : neutron star mass and radius values for the BSk21 equation of state.   

<<<<<<< HEAD
(5) `M1010_APR_LP.txt`: contains values for orbital frequency, ADM mass and angular momentum of a simulated binary neutron star system with $m_1 = m_2 = 1 \, M_{\odot}$ at different stages of its inspiral phase, as computed with LORENE.
=======
(4) `M1010_APR_LP.txt`: contains values for orbital frequency, ADM mass and angular momentum of a simulated binary neutron star system with $m_1 = m_2 = 1 M_{\odot}$ at different stages of its inspiral phase, as computed with LORENE.
>>>>>>> dd13b02790f16027033b1a895b1064baec74d253

(6) The following three files tabulate the estimated values of the orbital frequencies of the binary neutron stars at the mass shedding limit for the binary neutron star inspiral signals, simulated using the publicly available library [LORENE](https://lorene.obspm.fr/), for the three different equations of state considered in this study.
   
   a. `APR_lorene_ISCO.txt`: simulations performed for the APR equation os state.

   b. `SLy4_lorene_ISCO.txt`: simulations performed for the SLy4 equation os state.

   c. `BSk21_lorene_ISCO.txt`: simulations performed for the APR equation os state.
   
<<<<<<< HEAD
(7) `banksims_BBH.txt`: contains the results of template bank simulations performed for injected binary black hole signals with component masses in the range $[0.2,1.0] \, M_{\odot}$, against a set of binary black hole templates generated to cover the same parameter space, i.e. $m_1,m_2 \in [0.2,1.0] \, M_{\odot}$. The column headings are as follows:
=======
(6) `banksims_BBH.txt`: contains the results of template bank simulations performed for injected binary black hole signals with component masses in the range $[0.2,1.0] M_{\odot}$, against a set of binary black hole templates generated to cover the same parameter space, i.e. $m_1,m_2 \in [0.2,1.0] M_{\odot}$. The column headings are as follows:
>>>>>>> dd13b02790f16027033b1a895b1064baec74d253

`injection-m1`,  `injection-m2`, `lambda1` (0), `lambda2` (0), `template_m1`, `template_m2`, `fitting_factor`,  `same_mass_match(injection,BBH)` (1),  `f_{Schwarzschild ISCO}`

where `injection-m1`,  `injection-m2` are the masses of the black holes used for the injected signals, `lambda1`, `lambda2` are their respective tidal deformabilities, which are by definiton 0 for black holes,  `template_m1`, `template_m2` are the masses from the template bank for which the calculated match value is the fitting factor, `same_mass_match(injection,BBH)` is the match between the injected binary black hole signal with the individual masses being `injection-m1`,  `injection-m2` and a binary black hole signal having the same component masses, which is by definition 1,  and `f_{Schwarzschild ISCO}` is the frequency of gravitational wave emission for a point particle orbitting around a Schwarzschild black hole of mass injection-m1+injection-m2, in its innermost stable circular orbit (ISCO). 

<<<<<<< HEAD
(8) The results of template bank simulations performed for injected binary neutron star signals with component masses in the range $[0.2,1.0] \, M_{\odot}$ and tidal deformabilities derived from the aforementioned equations of state, are summarized in the next three files. The column headings for each of these files are as follows: 
=======
(7) The results of template bank simulations performed for injected binary neutron star signals with component masses in the range $[0.2,1.0] M_{\odot}$ and tidal deformabilities derived from the aforementioned equations of state, are summarized in the next three files. The column headings for each of these files are as follows: 
>>>>>>> dd13b02790f16027033b1a895b1064baec74d253

`injection-m1`,  `injection-m2`, `lambda1`, `lambda2`, `template_m1`, `template_m2`, `fitting_factor`,  `same_mass_match(BNS,BBH)`,  `$f_{Roche}$`

where `injection-m1`,  `injection-m2` are the masses of the component neutron stars for the injected signals, `lambda1`, `lambda2` are their respective tidal deformabilities, `template_m1`, `template_m2` are the masses from the template bank for which the calculated match value is the fitting factor, `same_mass_match(BNS,BBH)` is the match between the binary neutron star signal with the individual masses being `injection-m1`,  `injection-m2` and a binary black hole signal having the same component masses, and `f_{Roche}` is the Roche Lobe overflow frequency for the binary neutron star system, which is taken to be the termination point for the inspiral signal.
   
   a. `APR_bns_rlo_data.txt`: template bank simulation results for the APR equation of state.

   b. `SLY4_bns_rlo_data.txt`: template bank simulation results for the SLy4 equation of state.

   c. `BSK21_bns_rlo_data.txt`: template bank simulation results for the BSk21 equation of state.

(9) `nonecco3b.txt`: contains upper limits on the merger rate for non-eccentric compact binary sources, downloaded from the [github repository](https://github.com/gwastro/subsolar-O3-search/blob/master/upper_limits/noneccO3b.txt) for the public data release for the search for subsolar-mass binaries through LIGO and Virgo's third observing run, presented in the work by [Nitz & Wang](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.106.023024).  

The unit for masses of the compact objects tablulated in all the above data files is $M_{\odot}$, the tidal deformabilities are dimensionless, the unit for frequency is Hz, and all other quantities are dimensionless.

## Runing this notebook in a Docker container

This notebook can be run from a PyCBC Docker container, or a machine with PyCBC installed. Instructions for [downloading the docker container](http://gwastro.github.io/pycbc/latest/html/docker.html) are available from the [PyCBC home page.](https://pycbc.org/) To start a container with instance of Jupyter notebook, run the commands
```sh
docker pull pycbc/pycbc-el8:v2.0.5
docker run -p 8888:8888 --name pycbc_notebook -it pycbc/pycbc-el8:v2.0.5 /bin/bash -l
```
Once the container has started, this git repository can be downloaded with the command:
```sh
git clone https://github.com:sugwg/sub-solar-ns-detectability.git
```
The notebook server can be started inside the container with the command:
```sh
jupyter notebook --ip 0.0.0.0 --no-browser
```
You can then connect to the notebook server at the URL printed by ``jupyter``. Navigate to the directory `sub-solar-ns-detectability` in the cloned git repository and open [data_release.ipynb](https://github.com/sugwg/sub-solar-ns-detectability/blob/main/data_release.ipynb), the notebook that demonstrates use of these reults.



## Funding

This work was supported by NSF awards PHY-2011655 (DAB, AB), PHY-2011725 (DR), PHY-2020275 (DR), PHY-2116686 (DR), and AST-2108467 (DR), and DOE awards DE-SC0021177 (DR), DE-FG02-92ER40750 (JP). Computations were supported through computational resources provided by Syracuse University.


