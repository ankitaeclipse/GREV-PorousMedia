![alt text][logo]

[logo]: https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/GREV-PorousMedia.JPG "GsREV-PorousMedis"

# GREV-PorousMedia
Here we use analyse the grayscale micro-tomographic images (micro-CT) of porous media to infer a **Representative Elementary Volume** that is analogous to porosity and permeability.

To achieve this task, we borrow the [pyradiomics](https://pyradiomics.readthedocs.io/en/latest/) library from our collegeous in the medical community and apply it to porous media micro-CT images. In particular, we look at the Gray-level size-zone matrix or [GLSZM](https://en.wikipedia.org/wiki/Gray_level_size_zone_matrix) representations of porous media and infer statistics that are related to the pore space. 

## Installations

The most convenient way is to complete the installation procedures via [Anaconda](https://www.anaconda.com/distribution/) using Python 3.6+ versions. The first step is to create an anaconda environment and install [pyradiomics](https://pyradiomics.readthedocs.io/en/latest/installation.html) library. I personally recommend that you [install it from source](https://pyradiomics.readthedocs.io/en/latest/installation.html#install-from-source) so that all the dependcies are compiled on your own machine.  



