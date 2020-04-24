![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/GREV-PorousMedia-Logo.jpg)

# GREV-PorousMedia
Here we use analyze the grayscale micro-tomographic images (micro-CT) of porous media to infer a **Representative Elementary Volume** that is analogous to porosity and permeability.

To achieve this task, take motivation from the [pyRadiomics](https://pyradiomics.readthedocs.io/en/latest/) library build by colleagues in the medical community and apply it to porous media micro-CT images. In particular, we look at the Gray-level size-zone matrix or [GLSZM](https://en.wikipedia.org/wiki/Gray_level_size_zone_matrix) representations of porous media and infer statistics that are related to the pore space. 

## Installations

The most convenient way is to complete the installation procedures via [Anaconda](https://www.anaconda.com/distribution/) using Python 3.6+ versions. The first step is to create an anaconda environment named *poro_pyradiomics* and install [pyradiomics](https://pyradiomics.readthedocs.io/en/latest/installation.html) library. I personally recommend that you [install it from source](https://pyradiomics.readthedocs.io/en/latest/installation.html#install-from-source) so that all the dependencies are compiled on your own machine. This library is regularly updated by the developers but the version I forked can be found at [here](https://github.com/ankitaeclipse/pyradiomics).

You have installed the pyRadiomics library, you will need to update the libraries in the environment you created. This is because I installed some additional libraries such as pandas, openpyxl and may more. A list of the packages is in the [environment.yml](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/environment.yml). To update your python packages using this environment file by using the following command in [anaconda prompt](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#updating-an-environment):

```sh
$ conda activate poro_pyradiomics
$ cd GREV-PorousMedia
$ conda env update --prefix ./env --file environment.yml  --prune
```

While all the GLSZM compuatations are carried out using Python3.6 version, I used MATLAB for visualization purposes as it allows easier customization for plots and 3-D contours.

## GREV Analysis

The GREV analysis was carried out on grayscale micro-CT images. Originally these images are 16-bit images and need to be converted to 8-bit images by choosing cut-off based on a contrast adjustment algorithm. One such algorithm is the [modified automatic contrast adjustment algorithm](https://link.springer.com/chapter/10.1007/978-1-4471-6684-9_4). For this, you need to decide on a low-intensity and high intensity cut-off percentages based on the frequency histogram of gray-level intensities of the 16-bit image. The code for this is available in the jupyter notebook, [histogram_analysis](). Once you have chosen the cut-offs, use [ImageJ](https://imagej.net/Fiji) to re-quantize the 16-bit image to an 8-bit image. This re-quantization is important to generate a non-sparse GLSZM representation of porous media. 

### What is a GLSZM representation?
Use the jupter notebook, [GLSZM]() to compute the GLSZM representation of the porous media micro-CT image. The GLSZM representation is exported as a excel sheet as using the [GLSZM]() notebook. You can visualize it by importing it to MATLAB and using the script, [Visualize_GLSZM]().

### How to infer GREV?

Two types of GREV are inferred as a part of this study: deterministic(d-) and statistic(s-) GREV. To compute GLSZM properties related to dGREV analysis, use the jupyter notebook [GLSZM_dGREV]() and to compute GLSZM properties related to sGREV, use the jupyter notebook [GLSZM_sGREV](). 

dGREV: 
* Once you run the GLSZM_dGREV notebook, the final output is simply an excel file that contains the value of GLSZM properties for different window_sizes. 
* To infer dGREVs based on GLSZM properties, simply plot values of GLSZM properties against the different domain sizes or window sizes investiated. Alternatively, you can visualize dGREV by importing the dGREV excel data to MATLAB and using the script, [Visualize_dREV](). 
* You can also see how long did calculation for each window-size take in the time-taken column. The time reported here is in seconds (s). 

sGREV: 
* Once you run the GLSZM_sGREV notebook, the final output is series of excel files that contain values of GLSZM properties for different window_sizes measured by varying the spatial locations. 
* To infer sGREVs based on GLSZM properties, we calculate coefficient of variation. Use the script, [sGREV_CV]().
* It is important to remember that the sREV can take from a couple of minutes to hours or even a half-a-day depending on the number of window computations you have. Hence, it is advisable you use the time data from dGREV to estimate approximately how long will the sGREV calculations take. 

## Example

## How to cite
If you are keen to use the code, please cite the github repository and the journal article: 
Singh, A., Regenauer‐Lieb, K., Walsh, S. D. C., Armstrong, R. T., van Griethuysen, J. J. M. & Mostaghimi, P. (2020). On representative elementary volumes of grayscale micro-CT images of porous media.

## License
MIT License. Read further deatils about the license [here](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/LICENSE). 

## References
van Griethuysen, J. J. M., Fedorov, A., Parmar, C., Hosny, A., Aucoin, N., Narayan, V., Beets-Tan, R. G. H., Fillon-Robin, J. C., Pieper, S., Aerts, H. J. W. L. (2017). Computational Radiomics System to Decode the Radiographic Phenotype. Cancer Research, 77(21), e104–e107. `https://doi.org/10.1158/0008-5472.CAN-17-0339 <https://doi.org/10.1158/0008-5472.CAN-17-0339>




