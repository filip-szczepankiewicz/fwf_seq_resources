## Free Waveform (FWF) encoding pulse sequence resources

### Overview
This repository contains materials and tools to support the implementation and use of the "Free Waveform" (FWF) MRI pulse sequence. The sequence is a diffusion-weighted spin-echo that facilitates the execution of user-defined gradient waveforms for the purposes of tensor-valued diffusion encoding and other methods that require arbitrary modulation of the gradients.
<br/><br/>

### Getting the sequence
**Siemens**  
The sequence is shared via [Siemens Teamplay](https://webclient.eu.api.teamplay.siemens-healthineers.com/) by Filip Szczepankiewicz.  
Check the [list of compiled variants](/Siemens/readme.md) to see if the sequence is available for your system.  
For other questions, please contact me at [filip.szczepankiewicz@med.lu.se](mailto:filip.szczepankiewicz@med.lu.se).  

**Philips**  
Please contact Maarten Versluis at Philips Healthcare (maarten.versluis@philips.com).

**United Imaging**  
Please contact Weiguo Zhang at United Imaging (weiguo.zhang@united-imaging.com).

**Bruker**  
An implementation for TopSpin, by Daniel Topgaard at Lund University, is available [here](https://github.com/filip-szczepankiewicz/md-dmri/tree/master/acq/bruker).  
An implementation for ParaVision, by Mathew Budde at Medical College of Wisconsin, is available [here](https://osf.io/4nkg3/).
<br/><br/>

### Installing the sequence
**Siemens**  
Instructions for sequence installation and setup are found [here](/Siemens/Documents/).  

**Philips, GE and United Imaging**  
Instructions for installation and setup are provided by the vendor.
<br/><br/>

### Designing the experiment \[[Review paper](https://www.sciencedirect.com/science/article/pii/S0165027020304301)\]
The design of the gradient waveforms (b-tensor shapes) and the signal sampling schemes (b-values, rotations etc.) must be considered when setting up he experiment. A comprehensive review of the factors that need be considered is found [here](https://www.sciencedirect.com/science/article/pii/S0165027020304301). In general, the design is informed by the hardware, the intended analysis technique and the organ/subject characteristics. Below, we have collected tools and examples related to the experimental design.  

**Waveform design**  
A framework for numerical gradient waveform optimization was published by [Sjölund et al.](https://doi.org/10.1016/j.jmr.2015.10.012) and is available on [GitHub](https://github.com/jsjol/NOW). This framework also includes [concomitant gradient compensation](https://doi.org/10.1002/mrm.27828), [motion encoding compensation](https://onlinelibrary.wiley.com/doi/10.1002/mrm.28551), as well as [cross-term compensation](https://doi.org/10.1016/j.jmr.2021.106991).

**Example sampling schemes**  
Examples of sampling schemes appropriate for a given combination of organ and analysis technique are found in the [SamplingSchemes](/SamplingSchemes) folder.
<br/><br/>

### Data post-processing

Postprocessing can be done using regular tools developed by the diffusion MRI community. Special care is however needed for correction of distortions due to eddy currents and subject movement to avoid artefacts (see [Nilsson et al., 2015](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0141825)).
This can be done with e.g. the [mddMRI framework](#multidimensional-analysis-framework-github-citation) and [eddy tool](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/eddy) from FSL although special conditions apply (see [this note](/Misc/Postprocessing_Eddy.MD)).
<br/><br/>

### Model fitting and interpretation
We have published an [extensive framework in open source](https://github.com/markus-nilsson/md-dmri) for the analysis of data encoded by b-tensors and more. Please refer to these [instructions](https://github.com/markus-nilsson/md-dmri#how-to-start) for the setup of analysis pipelines, and the interpretation of [model parameters](https://github.com/markus-nilsson/md-dmri/tree/master/methods#md-dmri-methods).

**Example of analysis pipeline**  
* A brief example of how to calculate QTI parameters from data (based on the [DIB2019](https://github.com/filip-szczepankiewicz/Szczepankiewicz_DIB_2019) data set) can be found [here](https://github.com/filip-szczepankiewicz/Szczepankiewicz_DIB_2019/blob/master/EXAMPLE/dtd_covariance/dib_dtd_covariance_example1.m).
* A thorough, step-by-step, example including motion correction, QTI parameter fitting, and co-registration with anatomical sequences can be found [here](https://github.com/markus-nilsson/md-dmri/tree/master/examples/pipeline)
<br/><br/>


## External resources and references

#### General principles for gradient waveform design \[[GitHub](https://github.com/filip-szczepankiewicz/Szczepankiewicz_JNeuMeth_2021)\] \[[Citation](https://www.sciencedirect.com/science/article/pii/S0165027020304301)\]  
[_F. Szczepankiewicz, C-F. Westin, M. Nilsson. Gradient waveform design for tensor-valued encoding in diffusion MRI._ Journal of Neuroscience Methods 348, 2020.](https://www.sciencedirect.com/science/article/pii/S0165027020304301)
<br/><br/>
  
#### Numerical gradient waveform optimization \[[GitHub](https://github.com/jsjol/NOW)\] \[[Citation](https://doi.org/10.1016/j.jmr.2015.10.012)\]  
[_Sjölund, J., Szczepankiewicz, F., Nilsson, M., Topgaard, D., Westin, C. F., & Knutsson, H. (2015). Constrained optimization of gradient waveforms for generalized diffusion encoding. Journal of Magnetic Resonance, 261, 157-168._](https://doi.org/10.1016/j.jmr.2015.10.012)
<br/><br/>

#### Maxwell-compensated gradient waveforms and tools for concomitant gradient analysis \[[GitHub](https://github.com/markus-nilsson/md-dmri/tree/master/tools/cfa)\] \[[Citation](https://doi.org/10.1002/mrm.27828)\] \[[YouTube](https://www.youtube.com/watch?v=nqqzds7WS2U&feature=emb_logo)\]  
[_Szczepankiewicz F, Westin, C‐F, Nilsson M. Maxwell‐compensated design of asymmetric gradient waveforms for tensor‐valued diffusion encoding. Magn Reson Med. 2019;00:1–14. https://doi.org/10.1002/mrm.27828_](https://doi.org/10.1002/mrm.27828)
<br/><br/>

#### Motion-compensated gradient waveforms \[[GitHub](https://github.com/filip-szczepankiewicz/Szczepankiewicz_MRM_2020)\] \[[Citation](https://onlinelibrary.wiley.com/doi/10.1002/mrm.28551)\] 
[_F Szczepankiewicz, J Sjölund, E Dall’Armellina, S Plein, J E Schneider, I Teh, and C-F Westin. Motion-compensated gradient waveforms for tensor-valued diffusion encoding by constrained numerical optimization._ Magn Reson MEd, 2020](https://onlinelibrary.wiley.com/doi/10.1002/mrm.28551)
<br/><br/>

#### Cross-term-compensated gradient waveforms \[[GitHub](https://github.com/filip-szczepankiewicz/Szczepankiewicz_JMR_2021)\] \[[Citation](https://doi.org/10.1016/j.jmr.2021.106991)\] 
[_Szczepankiewicz and Sjölund, Cross-term-compensated gradient waveform design for tensor-valued diffusion MRI._ Journal of Magnetic Resonance, 2021.](https://doi.org/10.1016/j.jmr.2021.106991)
<br/><br/>

#### Multidimensional analysis framework \[[GitHub](https://github.com/markus-nilsson/md-dmri)\] \[[Citation](https://www.researchgate.net/profile/Filip_Szczepankiewicz/publication/325595277_An_open-source_framework_for_analysis_of_multidimensional_diffusion_MRI_data_implemented_in_MATLAB/links/5b179cedaca272d24cc43a0e/An-open-source-framework-for-analysis-of-multidimensional-diffusion-MRI-data-implemented-in-MATLAB.pdf)\]  
[_M. Nilsson, F. Szczepankiewicz, B. Lampinen, A. Ahlgren, J. de Almeida Martins, S. Lasic, C-F. Westin, D. Topgaard. An open-source framework for analysis of multidimensional diffusion MRI data implemented in MATLAB. Proc. Intl. Soc. Mag. Reson. Med. 26 (2018), Paris, France._](https://www.researchgate.net/profile/Filip_Szczepankiewicz/publication/325595277_An_open-source_framework_for_analysis_of_multidimensional_diffusion_MRI_data_implemented_in_MATLAB/links/5b179cedaca272d24cc43a0e/An-open-source-framework-for-analysis-of-multidimensional-diffusion-MRI-data-implemented-in-MATLAB.pdf)
<br/><br/>

#### Peripheral nerve stimulation prediction \[[GitHub](https://github.com/filip-szczepankiewicz/safe_pns_prediction)\] \[[Citation](https://doi.org/10.1002/mrm.27828)\]  
[_Szczepankiewicz F, Westin, C-F, Nilsson M. Maxwell-compensated design of asymmetric gradient waveforms for tensor-valued diffusion encoding. Magn Reson Med. 2019;00:1–14. https://doi.org/10.1002/mrm.27828_](https://doi.org/10.1002/mrm.27828)
<br/><br/>

#### Free waveform (FWF) sequence header extraction \[[GitHub](https://github.com/filip-szczepankiewicz/fwf_header_tools)\] \[[Citation](https://doi.org/10.1016/j.dib.2019.104208)\] 
[_F Szczepankiewicz, S Hoge, C-F Westin. Linear, planar and spherical tensor-valued diffusion MRI data by free waveform encoding in healthy brain, water, oil and liquid crystals. Data in Brief (2019), DOI: https://doi.org/10.1016/j.dib.2019.104208_](https://doi.org/10.1016/j.dib.2019.104208)
<br/><br/>

#### Example protocols at multiple systems \[[GitHub](https://github.com/filip-szczepankiewicz/Szczepankiewicz_PONE_2019)\] \[[Citation](https://doi.org/10.1371/journal.pone.0214238)\]  
[_Szczepankiewicz F, Sjölund J, Ståhlberg F, Lätt J, Nilsson M. Tensor-valued diffusion encoding for diffusional variance decomposition (DIVIDE): Technical feasibility in clinical MRI systems. PLoS ONE. 2019;14(3):e0214238. https://doi.org/10.1371/journal.pone.0214238_](https://doi.org/10.1371/journal.pone.0214238)
<br/><br/>

#### Open source tensor-valued dMRI data \[[GitHub](https://github.com/filip-szczepankiewicz/Szczepankiewicz_DIB_2019)\] \[[Citation](https://doi.org/10.1016/j.dib.2019.104208)\]  
[_F. Szczepankiewicz, S. Hoge, C-F. Westin. Linear, planar and spherical tensor-valued diffusion MRI data by free waveform encoding in healthy brain, water, oil and liquid crystals. Data in Brief (2019), DOI: https://doi.org/10.1016/j.dib.2019.104208_](https://doi.org/10.1016/j.dib.2019.104208)
<br/><br/>

#### Scientific presentation on tensor-valued diffusion encoding \[[YouTube](https://www.youtube.com/watch?v=o4LYijV90Tg&t=1241s)\] \[[Citation](https://doi.org/10.1016/j.neuroimage.2016.07.038)\]  
[_F. Szczepankiewicz, D. van Westen, E. Englund, C-F. Westin, F. Ståhlberg, J. Lätt, P.C. Sundgren, M. Nilsson. The link between diffusion MRI and tumor heterogeneity: Mapping cell eccentricity and density by diffusional variance decomposition (DIVIDE). NeuroImage 142, p. 522-532, 2016. DOI: https://doi.org/10.1016/j.neuroimage.2016.07.038_](https://doi.org/10.1016/j.neuroimage.2016.07.038)
