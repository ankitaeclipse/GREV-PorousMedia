![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/GREV-PorousMedia-Logo.jpg)

# Example GREV Analysis

The [data]() used for example GREV analysis is a 200^3 8-bit grayscale micro-CT image of a Bentheimer sandstone.
Following the steps outlined in the main readme file about: 
* [GLSZM](https://github.com/ankitaeclipse/GREV-PorousMedia#grev-analysis) 
* [dGREV](https://github.com/ankitaeclipse/GREV-PorousMedia#what-is-a-glszm-representation)
* [sGREV](https://github.com/ankitaeclipse/GREV-PorousMedia#what-is-a-glszm-representation) 

we get the following results.  

### Histogran Representation and GLSZM Representation

<img src="https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/example/grayhistogram-exampledata.jpg" alt="Kitten"
	title="A cute kitten" width="150" height="100" />
![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/example/glszm-example-represntation.jpg)

### Deterministic GREV (dGREV) based on GLSZM properties
We investigate GREVs for window-sizes carying from 20^3 to 200^3 with a step increase of 20^3. 
We chose to analyse dGREV based on *size zone non-uniformity normalized* abbreviated as SVNU, which is a GLSZM property calculated for different window or domain sizes mentioned above.

![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/example/dREV.jpg)

The time taken to calculate the GLSZM and their associated properties are shown below:

![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/example/time-taken-dGREV.jpg)

### Statistic GREV (sGREV) based on GLSZM properties
We investigate GREVs for window-sizes carying from 20^3 to 200^3 with a step increase of 20^3. 
We chose to analyse sGREV based on *size zone non-uniformity normalized* abbreviated as SVNU, which is a GLSZM property calculated for different window or domain sizes mentioned above.

To infer sGREV, the coefficient of variation is calculated for each window-size to quantify uncertainity.
![Image](https://github.com/ankitaeclipse/GREV-PorousMedia/blob/master/example/sGREV.jpg)




