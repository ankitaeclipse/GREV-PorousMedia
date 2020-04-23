![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/GREV-PorousMedia-Logo.jpg)

# GREV-PorousMedia
Here we use analyze the grayscale micro-tomographic images (micro-CT) of porous media to infer a **Representative Elementary Volume** that is analogous to porosity and permeability.

To achieve this task, we borrow the [pyRadiomics](https://pyradiomics.readthedocs.io/en/latest/) library from our colleagues in the medical community and apply it to porous media micro-CT images. In particular, we look at the Gray-level size-zone matrix or [GLSZM](https://en.wikipedia.org/wiki/Gray_level_size_zone_matrix) representations of porous media and infer statistics that are related to the pore space. 

## Installations

The most convenient way is to complete the installation procedures via [Anaconda](https://www.anaconda.com/distribution/) using Python 3.6+ versions. The first step is to create an anaconda environment named *poro_pyradiomics* and install [pyradiomics](https://pyradiomics.readthedocs.io/en/latest/installation.html) library. I personally recommend that you [install it from source](https://pyradiomics.readthedocs.io/en/latest/installation.html#install-from-source) so that all the dependencies are compiled on your own machine. This library is regularly updated by the developers but the version I forked can be found at [here](https://github.com/ankitaeclipse/pyradiomics).

You have installed the pyRadiomics library, you will need to update the libraries in the environment you created. This is because I installed some additional libraries such as pandas, openpyxl and may more. A list of the packages is in the [environment.yml](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/environment.yml). To update your python packages using this environment file by using the following command in [anaconda prompt](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#updating-an-environment):

```sh
$ conda activate poro_pyradiomics
$ cd GREV-PorousMedia
$ conda env update --prefix ./env --file environment.yml  --prune
```

## REV Analysis

The REV analysis was carried out on grayscale micro-CT images. Originally these images are 16-bit images and need to be converted to 8-bit images by choosing cut-off based on a contrast adjustment algorithm. One such algorithm is the [*modified automatic contrast adjustment algorithm*](https://link.springer.com/chapter/10.1007/978-1-4471-6684-9_4). For this, you need to decide on a low-intensity and high intensity cut-off percentages based on the frequency histogram of gray-level intensities of the 16-bit image. The code for this is available in the jupyter notebook, [histogram_analysis](). Once you have chosen the cut-offs, use [ImageJ](https://imagej.net/Fiji) to re-quantize the 16-bit image to an 8-bit image.
