## Sampling schemes for FWF-related experiments

### Overview
Depending on the analysis method, the experiment must include a set of samples that can be used to estimate a  given set of model parameters. Below is a collection of sampling schemes that have been tailored to a given method and organ. Please consider them staring points for your experiments, as the optimal design of sampling schemes is still an open question.  
Currently, only files for Philips (.txt) and Siemens (.dvs) are supported, but equivalet scanner instructions can be used on other vendors.
<br/><br/>

### Diffusional variance decomposition (DIVIDE) and Q-space trajectory imaging (QTI)
**General principle**  
DIVIDE and QTI both require that at least three unique b-values are sampled, and that at least two shapes of the b-tensor are included (b_{\Delta}^2). QTI also requires at least 28 non-colinear signal samples. 

* Brain MK1
* Brain MK2
    * Short
    * Intermediate
    * Long
* Brain MK3
