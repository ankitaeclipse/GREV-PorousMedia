![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/GREV-PorousMedia-Logo.jpg)

# GREV-PorousMedia
Here we use analyse the grayscale micro-tomographic images (micro-CT) of porous media to infer a **Representative Elementary Volume** that is analogous to porosity and permeability.

To achieve this task, we borrow the [pyradiomics](https://pyradiomics.readthedocs.io/en/latest/) library from our collegeous in the medical community and apply it to porous media micro-CT images. In particular, we look at the Gray-level size-zone matrix or [GLSZM](https://en.wikipedia.org/wiki/Gray_level_size_zone_matrix) representations of porous media and infer statistics that are related to the pore space. 

## Installations

The most convenient way is to complete the installation procedures via [Anaconda](https://www.anaconda.com/distribution/) using Python 3.6+ versions. The first step is to create an anaconda environment named *poro_pyradiomics* and install [pyradiomics](https://pyradiomics.readthedocs.io/en/latest/installation.html) library. I personally recommend that you [install it from source](https://pyradiomics.readthedocs.io/en/latest/installation.html#install-from-source) so that all the dependcies are compiled on your own machine. This library is regularly updated by the developers but the version I forked can be found at [here](https://github.com/ankitaeclipse/pyradiomics).

You have installed the pyradiomics library, you will need to update the libraries in the enviorment you created. This is because I installed some additional libraires such as pandas, openpyxl and may more. A list of the packages is in the [environment.yml](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/environment.yml). To update your python packages using this environment file by using the following command in anaconda prompt:

```sh
$ conda activate poro_pyradiomics
$ cd GREV-PorousMedia
$ conda env update --prefix ./env --file environment.yml  --prune
```





