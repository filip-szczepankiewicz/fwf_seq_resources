# Eddy 

[Eddy](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/eddy) is a tool from FSL 
for  correcting eddy currents and movements in 
diffusion data. It makes use of a Gaussian process that predicts the signal 
between different diffusion encoding directions, which helps the 
registration. However, this Gaussian process is not yet generalized for 
methods using free waveforms, such as b-tensor encoding. Thus, some care is 
required to make it work.

[Michiel Cottar (PhD)](https://www.ndcn.ox.ac.uk/team/michiel-cottaar) used 
eddy for postprocessing in a project on estimation of fiber dispersion [1]. 
Below is a summary of this experience

>Currently, eddy can only process data which varies with gradient 
>orientation and b-value, not anything else. This is because the 
>Gaussian processes inside eddy only support varying along these 
>dimensions. While generalising the gaussian processes to allow 
>the data to vary across more axes (e.g., shape of the B-tensor 
>or TE), I don't think anyone is actively working on that at this point.

>With that limitation in mind, I've found that eddy does quite a good 
>job of registering either linear, planar, or spherical encoded data 
>(please not that this assessment is mainly based on eyeballing the 
>output, not a detailed quantitative analysis). So, for my project 
>which contained linear and spherical tensor encoded data, I ran eddy 
>twice: once on the linear encoded dataset and once on the spherical 
>tensor encoded dataset. Afterwards, you can either register the 
>datasets to each other (using the b0's) or to some common space 
>(I registered them to the T1-weighted image). Note that eddy registers 
>the data to the first b0, so if you make sure that the first b0 is the 
>same for the linear and spherical tensor encoded data, the output of 
>the two eddy runs should already be in alignment (I did not actually 
>test this).

# References

[1] Improved fibre dispersion estimation using b-tensor encoding. 
Michiel Cottaar, Filip Szczepankiewicz, Matteo Bastiani, 
Moises Hernandez-Fernandez, Stamatios N. Sotiropoulos,
Markus Nilsson, Saad Jbabdi. arXiv. https://arxiv.org/abs/1901.05820.
