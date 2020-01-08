## Readme

The following systems are compatible with the MDD sequence, ordererd by gradient systems:
* XRMB
    * Discovery MR450 1.5T
    * Discovery MR750 3.0T
* XRMW
    * Optima MR450w 1.5T
	* Discovery MR750w 3.0T
    * SIGNA Artist
    * SIGNA Architect
* HRMW
    * SIGNA Premier

### Selecting different protocols on the scanner

There are three predefined diffusion acquisition protocols, which is selected by setting CV27 to different values. 

#### Short protocol (CV27 = 1)

| Waveform| b-values [ms/µm²] | Acq. volumes |
|------|------|-------|
|  LTE    |   0.1,  1.0,  2.0   | 4, 10, 15      |
|  STE    |   0.1,  1.0,  2.0   |    6, 10, 10   |

#### Intermediate protocol (CV27 = 2)

| Waveform| b-values [ms/µm²] | Acq. volumes |
|------|------|-------|
|  LTE    |   0.1, 0.7, 1.4, 2.0   |  6, 6, 10, 21  |
|  STE    |   0.1, 0.7, 1.4, 2.0   |   6, 6, 10, 15 |


#### Long protocol (CV27 = 3)

| Waveform| b-values [ms/µm²] | Acq. volumes |
|------|------|-------|
|  LTE    |   0.1, 0.7, 1.4, 2.0 | 6, 6, 16, 30  |
|  PTE    | 0.1, 1.0, 2.0  | 6, 10, 15  |
|  STE    |   0.1, 0.7, 1.4, 2.0   |    6, 6, 10, 10|


### Accessing the waveform information
The waveforms and xps files can be downloaded from [here](), or can be found in the folder `/usr/g/research/extwd/waveforms/` on the scanner. The files are named after the gradient system and the CV27 value, so for example, the information about the long protocol on the Signa Artist platform are found in the XRMW003 files. 

There are two files types of interest for each gradient system and protocol combination:

**txt**: a comma separated file where all acquisition volume b-values, b-delta values and diffusion directions are stored

**mat**: a MATLAB file that contains three variables. 

`encoding_table` is a Nx5 MATLAB table that holds the acquisition volume b-values, b-delta values and diffusion directions of each of the N acquisition volumes.

`waveforms` is a 19127x3xN MATLAB array that contains waveform of the x, y and z gradient for each of the N acquisition volumes.

`xps` is a MATLAB struct containing all information for creating parametric maps using the MDM MATLAB library.