## Sequence naming convention
The full name of a sequence contains several important bits of information about its version and compatability. The convention is as follows:

    [IDEAVERSION] [*_SERVICEPACK] [_SEQNAME] [_VERSION and VARIANT] [_COMPILEDATE (yymmdd)] [*_COMMENT]

Astrisk denotes optional components.

### Sequence variants
Currently there are two main sequence variants: 
##### "a" - Advanced
The advanced variant allows maximal freedom in the experimental design. It requires knowledge about the system and theoretical background to operate correctly.

##### "s" - Simple
The simple variant is maximally automated for simplified use. It uses only pre-defined gradient waveforms (hard coded; no need for waveform library) for linear, planar and spherical b-tensor encoding.

**Example 1:**

    VE11C_FWF_V1.13s_190317
This is the standard FWF sequence compiled 17th March, 2019 for the VE11C version of IDEA using no specific service pack. It is the simple variant (variant is "s") based on version 1.13.

**Example 2:**

    VE11C_SP03_SMSFWF_V1.12x_181212
This is the SMS-FWF sequence compiled 12th December, 2018 for the VE11C version of IDEA using service pack 03. It is a non-standard variant meaning that it has some special functionallity (variant is "x") based on version 1.12.

## Compiled versions

### VE11C
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

### VD13A (SP4)
* 0.10a

### VD13C
* 150420a

### VD13C (SP2)
* 150507a

### VD13D
* 1.04a
* 1.05a
* 1.07a

## Abbreviated version log
WIP
