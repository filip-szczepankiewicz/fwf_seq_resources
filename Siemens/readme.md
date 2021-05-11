# Siemens Implementation

### Latest compiled versions per IDEA version

|          | VE11E | VE11C | VE11B | VE11A | VD11D | VD13D | VD13A_SP04 |
|----------|-------|-------|-------|-------|-------|-------|------------|
| Advanced |  1.19 |  1.19 |  1.05 |  1.07 |  1.13 |  1.07 |  1.07      |
| Simple   |  1.19 |  1.19 |  -    |  -    |  -    |  -    |  -         |

_If any given IDEA version is not in the table, we have not yet developed the sequence for that platform._  
<br/>

### Sequence variants
There are two main sequence variants:  
* Advanced (a) - The advanced variant allows maximal freedom in the experimental design. It requires knowledge about the MRI hardware to operate correctly. 
* Simple (s) - The simple variant is robust and automated for simplified use. It includes gradient waveforms (no need for waveform library) for linear, planar and spherical b-tensor encoding and is limited to b-values of 2 ms/µm<sup>2</sup> to avoid duty cycle issues. 
<br/>

### Sequence naming convention
The full name of a sequence contains several important bits of information about its version and compatability. The convention is as follows:

    [IDEAVERSION] [*_SERVICEPACK] [_SEQNAME] [_VERSION and VARIANT] [_COMPILEDATE (yymmdd)] [*_COMMENT]

Astrisk denotes optional components.

#### Example:
    VE11C_FWF_V1.13s_190317
This is the standard FWF sequence compiled 17th March, 2019 for IDEA version VE11C using no specific service pack. It is the simple variant (variant is "s") version 1.13.  
<br/>

## Abbreviated list of version features
* 1.07
  * Added automatic scaling of waveform in time
  * Added trapezoidal and bi-trapezoidal waveforms to common bank
* 1.09
  * Added support for storing waveform in DICOM header
  * Fixed error in "AngToRM" rotation mode which did not work properly in 1.07
  * Reworked tooltip to avoid overflow
* 1.10
  * Added up to 20 study banks
  * Added up to 16 waveform pairs per study
* 1.12
  * Created simple sequence variant
  * Added hard coded waveforms (LTE, PTE, STE)
  * Diffusion time was maximized along 1st channel (Ch-x)
* 1.13
  * Re-optimized hard coded waveforms (LTE, PTE, STE)
  * STE is rotated to have the lowest diffusion time along 1st channel (Ch-x)
  * LTE is 1st channel of STE; PTE is independently optimized
  * Added version handling for stored waveforms
  * Experimental removal of 2nd crusher
* 1.14
  * Developed for non-SMS branch
  * Added user info about flow and acceleration weighting
  * Removed second crusher from s-variant (will be reverted or expanded)
* 1.15
  * Changed rotation mode for LTE in s-variant to use RM+Sc to be identical to PTE and STE
  * Added control for extended header (will be reverted)
* 1.16 (buggy)
  * Created "Experimental" variant
  * Harmonization between VE11C and VE11E
  * s-variant always uses crushers (may be expanded)
  * Added trapezoidal LTE to the simple/HC library
  * Moved several function to experimental branch
* 1.18 
  * Added support for SMS (Siemens product)
  * Fixed bug related to new enumeration format
  * Fixed bug related to metadata storage in DICOM header
  * Fixed bug related to update of special seq card tooltips
* 1.19
  * Added asymmeric pause duration
  * Added metadata to DICOM header for absolute timing
  * Added support for HDR export of data
  
* 1.20 (experimental)
  * Added simple SMR variant that allows higher b and manual timing

* 1.21 (experimental)
  * Added LTE Y and Z from STE
  * Added velocity and acceleration compensated LTE
