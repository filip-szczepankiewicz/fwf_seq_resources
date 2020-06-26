# Siemens Implementation

## Sequence naming convention
The full name of a sequence contains several important bits of information about its version and compatability. The convention is as follows:

    [IDEAVERSION] [*_SERVICEPACK] [_SEQNAME] [_VERSION and VARIANT] [_COMPILEDATE (yymmdd)] [*_COMMENT]

Astrisk denotes optional components.

### Sequence variants
Currently there are four main sequence variants: 
#### "a" - Advanced
The advanced variant allows maximal freedom in the experimental design. It requires knowledge about the system and theoretical background to operate correctly.

#### "e" - Experimental
The experimental variant is similar to the advanced variant, but includes untested and experimental functions.

#### "s" - Simple
The simple variant is maximally automated for simplified use. It uses only pre-defined gradient waveforms (hard coded; no need for waveform library) for linear, planar and spherical b-tensor encoding. This variant is limited to b-values of 2 ms/µm<sup>2</sup> to avoid duty cycle issues. 

#### "c" - Connectome
From sequence version 1.13, this variant is tailored specifically to the Connectome system. It adjusts several features that are only relevant for the strong gradients at this system.

#### Example 1:
    VE11C_FWF_V1.13s_190317
This is the standard FWF sequence compiled 17th March, 2019 for the VE11C version of IDEA using no specific service pack. It is the simple variant (variant is "s") based on version 1.13.

#### Example 2:
    VE11C_SP03_SMSFWF_V1.12x_181212
This is the SMS-FWF sequence compiled 12th December, 2018 for the VE11C version of IDEA using service pack 03. It is a non-standard variant meaning that it has some special functionallity (variant is "x") based on version 1.12.

## Compiled versions

### VE11E
* 1.16a (xm)
* 1.17s (xm)

### VE11C / VE11C_SP01
* 1.06a
* 1.07a
* 1.11a / s
* 1.12a / s
* 1.13a / s

### VE11B
* 0.90a
* 1.00a
* 1.01a
* 1.02a
* 1.03b
* 1.04a
* 1.05a

### VE11A
* 1.03b
* 1.04b
* 1.05a
* 1.07a

### VD11D
* 1.01a
* 1.05b
* 1.07b
* 1.07c (with trigger)
* 1.07d (MOTHER)
* 1.13c

### VD13A_SP04
* 0.10a

### VD13C
* 150420a

### VD13C_SP02
* 150507a

### VD13D
* 1.04a
* 1.05a
* 1.07a

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
* 1.16
  * Created "Experimental" variant
  * Harmonization between VE11C and VE11E
  * s-variant always uses crushers (may be expanded)
  * Added trapezoidal LTE to the simple/HC library
  * Moved several function to experimental branch
  
  
