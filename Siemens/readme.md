# Siemens Implementation

### Latest compiled FWF sequence versions per IDEA version

|          | VD11D | VD13D | VE11A | VE11B | VE11C | VE11E | XA30A |
|----------|-------|-------|-------|-------|-------|-------|-------|
| Version  |  1.13 |  1.07 |  1.07 |  1.05 |  1.26 |  1.19 |  1.26 |

_If any given IDEA version is not in the table, we have not yet developed the sequence for that platform._  
<br/>

### Sequence functionallity
The funcitons/capabilities of the shared FWF sequence are intended to support DIVIDE and QTI-style acquisition. The sequence therefore enables:
* Tensor-valued diffusion encodign with linear, planar and spherical b-tensors
  * The linear b-tensor encoding includes two variants: trapezoids and a x-channel of the spherical variant
  * All waveforms are compensated for concomitant gradients
  * All waveforms are compiled into the sequence and there is no need for a custom waveform library
* B-values up to 2000 s/mm<sup>2</sup>
* Simultaneous multislice (SMS) according to Siemens product implementation (v1.18 and later)
* All conventional functions of ep2d_diff are maintained (GRAPPA, partial-Fourier, IR-pulses etc.)

_More advanced variants of the FWF may be shared/supported in the future!_  
<br/>

### Sequence file naming convention
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
  * Added support for asymmeric pause duration
  * Added metadata to DICOM header for absolute timing
  * Added support for HDR export of data
* 1.22
  * Reworked crusher behaviour (should work well at low-b and self-balance wfs)
  * Added info on motion encoding in the logged "galore" table
  * Reduced maximal amplitude of balance gradient to 2 mT/m
  * Fixed bugg in timing calculation (reduced minimal TE at low b-max)
* 1.26
  * Started development for in-house development mode
  * Removed DPG mode
