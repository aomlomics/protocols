---
# MIOP terms
methodology_category: Omics Analysis
project: NOAA Atlantic Oceanographic and Meteorological Laboratory OMICS Lab Protocols
purpose: PCR [OBI:0000415]
analyses: PCR [OBI:0000415]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853]
broad_scale_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149]
target: 12S mitochondrial ribosomal RNA  [NCIT:C128263]
creator: Luke Thompson
materials_required: vortexer [OBI:0400118], PCR instrument [OBI:0000989], agarose gel electrophoresis system [OBI:0001134]
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: 240
personnel_required: 1
language: en
issued: 2024-08-22
audience: scientists
publisher: NOAA's Atlantic Oceanographic and Meteorological Laboratory
hasVersion: 1
license: CC0 1.0 Universal
maturity level: mature

# FAIRe terms
pcr_0_1: 1
thermocycler: Eppendorf Mastercycler Nexus Thermal Cycler
amplificationReactionVolume: 25
assay_name: ssu12sv5v6_mifish
assay_validation: not provided
targetTaxonomicAssay: 12S rRNA gene sequencing ing the V5-V6 region using primers MiFish-F V2 and MiFish-R
TaxonomicScope: fishes
target_gene: 12S rRNA
target_subfragment: V5-V6
ampliconSize: 163-185
pcr_primer_forward: GCCGGTAAAACTCGTGCCAGC
pcr_primer_reverse: CATAGTGGGGTATCTAATCCCAGTTTG
pcr_primer_name_forward: 12S MiFish_U F Fluidigm V2
pcr_primer_name_reverse: 12S MiFish_U R Fluidigm
pcr_primer_reference_forward: http://dx.doi.org/10.1098/rsos.150088
pcr_primer_reference_reverse: http://dx.doi.org/10.1098/rsos.150088
pcr_primer_vol_forward: 1.0
pcr_primer_vol_reverse: 1.0
pcr_primer_conc_forward: 10
pcr_primer_conc_reverse: 10
probeReporter: not applicable
probeQuencher: not applicable
probe_seq: not applicable
probe_ref: not applicable
probe_conc: not applicable
commercial_mm: AmpliTaq Gold 360 Master Mix
custom_mm: PCR reactions were run in 25 uL reaction volumes, with 1.0 uL of DNA, 12.5 uL of AmpliTaq Gold, 9.5 uL of water, and 1.0 uL of each primer (10 uM).
pcr_dna_vol: 1.0
pcr_rep: 1.0
nucl_acid_amp: https://www.protocols.io/view/environmental-dna-edna-12s-metabarcoding-illumina-kqdg35kqzv25/v
pcr_cond: initial denaturation:95_15;touchdown cycling;denaturation:94_0.5;annealing:69.5_0.5;elongation:72_1.5;13;normal cycling;denaturation:94_0.5;annealing:50_0.5;elongation:72_0.75;final elongation:72_10;25
annealingTemp: 69.5;50
pcr_cycles: 13;35
pcr_analysis_software: not provided
pcr_method_additional: not provided
---

# NOAA/AOML PCR Protocol 12S rRNA V5-V6 (MiFish)

## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

- MIOP terms are listed in the YAML frontmatter of this page.
- See <https://github.com/BeBOP-OBON/miop/blob/main/model/schema/terms.yaml> for list and definitions.

### Making eDNA FAIR (FAIRe)

- FAIRe terms are listed in the YAML frontmatter of this page.
- See <https://fair-edna.github.io/download.html> for the FAIRe checklist and more information.
- See <https://fair-edna.github.io/guidelines.html#missing-values> for guidelines on missing values that can be used for missing FAIRe or MIOP terms.

### Authors

| PREPARED BY | AFFILIATION | ORCID | DATE |
| ------------- | ------------- | ------------- | ------------- |
| Luke Thompson |NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0002-3911-1280> | 2021-02-28 |
| Sean Anderson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0003-3096-1120> | 2021-02-28 |
| Sammy Harding | NOAA/AOML, MSU/NGI | <https://orcid.org/0009-0008-8885-6140> | 2024-08-19 |

## RELATED PROTOCOLS

| PROTOCOL NAME | LINK  | VERSION | RELEASE DATE|
| ------------- | ------------- | ------------- | ------------- |
| NOAA/AOML Water Sampling Protocol using Sterivex with Zirconia Beads  | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_sampling_sterivex_beads.md> | 1.2.0 | 2025-01-08 |
| NOAA/AOML DNA Extraction Protocol for Sterivex using KingFisher | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_extractdna_sterivex_kingfisher.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 16S rRNA V4-V5 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu16sv4v5_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 18S rRNA V9 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu18sv9_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML Metagenome Library Prep Protocol (Illumina DNA Prep) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_libprep_metag_illumina.md> | 1.1.0 | 2024-11-16 |

## RELATED EXTERNAL PROTOCOLS

| PROTOCOL NAME | LINK | ISSUER / AUTHOR | ACCESS DATE |
| ------------ | ------------ | ------------ | ---------- |
| AMPure XP Bead-Based Reagent Protocol for PCR Purification | https://www.beckman.com/reagents/genomic/cleanup-and-size-selection/pcr/ampure-xp-protocol | Beckman Coulter | 2025-02-05 |
| Invitrogen Qubit 1X dsDNA HS Assay Kits User Guide | https://assets.thermofisher.com/TFS-Assets/LSG/manuals/MAN0017455_Qubit_1X_dsDNA_HS_Assay_Kit_UG.pdf | ThermoFisher Scientific | 2025-02-05 |

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2021-08-22 | Initial release |
| 1.0.1 | 2024-10-23 | Formatting edits |
| 1.1.0 | 2024-11-16 | Addition of FAIR eDNA terms in YAML frontmatter |

### Acronyms and Abbreviations

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| NOAA | National Oceanographic and Atmospheric Administration |
| AOML | Atlantic Oceanographic and Meteorological Laboratory |
| MSU | Mississippi State University |
| NGI | Northern Gulf Institute |
| PCR | Polymerase chain reaction |
| eDNA | environmental DNA |
| NTC | No template control |
| EtOH | Ethanol |

### Glossary

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| Extraction Blank | A type of negative control to confirm there is no contamination during DNA extractions. Normally an empty is filter extracted and PCR amplified alongside other samples. |
| No Template Control | A type of negative control during PCR to confirm there is no contamination during the PCR process. Normally nuclease-free water is run in place of DNA on a PCR. |

## BACKGROUND

### Summary

This protocol describes steps for performing PCR for [12S rRNA](target_gene) [V5-V6](target_subfragment) marker gene regions using eDNA extracted from Sterivex at NOAA's AOML. There are several optional steps at the end of the protocol including using AMPure beads to clean up PCR products. Some steps (e.g. PCR plate preparation, AMPure bead cleanup, sequencing plate dilutions) have been or can be optimized for use with the Opentrons OT2 robot. This protocol closely follows along with the following protocol: <https://www.protocols.io/view/environmental-dna-edna-12s-metabarcoding-illumina-kqdg35kqzv25/v2>.

### Method description and rationale

This protocol is used for PCR amplifying the 12S MiFish marker gene regions of environmental DNA. Fluidigm adapters are already present on the primers described in the following protocol. It is highly reproducible and can easily be adapted for any number of samples (i.e. a full 96-well plate or a few samples).

### Spatial coverage and environment(s) of relevance

This protocol can be used to amplify the 12S marker gene region of any eDNA sample.

## PERSONNEL REQUIRED

One person with molecular biology experience.

### Safety

There are no hazardous chemicals or materials involved in this protocol. Standard lab safety techniques should still be used such as wearing PPE to avoid skin or eye contact.

### Training requirements

Basic molecular biology training is sufficient for this protocol including sterile technique, pipetting small volumes and programming/running [PCR](purpose) thermal cyclers.

### Time needed to execute the procedure

Protocol takes about 4 hours ([240](time_required) minutes) including thermal cycler run time.

## EQUIPMENT

For 96-well Plate:

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| **Durable equipment** |
| 100-1000 ul Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 10-100 ul Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 0.1-2.5 ul Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 10-100 ul 8-Channel Pipette | Eppendorf Research Plus 8 Channel Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 0.5-10 uL 8-Channel Pipette |Eppendorf Research Plus 8 Channel Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| Thermal cycler | Mastercycler Nexus Thermal Cycler | Eppendorf | 1 | Can be substituted with generic |
| Microwave | Generic Microwave | Generic Brand | 1 | |
| Flask | 500 mL Flask | Generic Brand | 1 | Used for mixing agarose gel solution |
| 1-L Glass Container | 1 L Glass Container | Generic Brand | 1 | Used for storing 1x TBE buffer |
| Gel Tray & Box | Gel Electrophoresis Box and Tray | Generic Brand | 1 | Can be substituted with generic |
| Gel Combs | Gel Electrophoresis Combs | Generic Brand | 2 | Can be substituted with generic |
| **Consumable equipment** |
| Gloves | Nitrile Gloves, Exam Grade, Powder-free | ULINE | 1 | (box) Can be substituted with generic |
| Kim Wipes | KimWipe Delicate Task Wipers | KimTech | 1 | (box) Can be substituted with generic |
| 96-well PCR Plate | | Armadillo PCR Plate, 96-well, clear, clear wells | ThermoFisher | 3 | |
| PCR Plate Seal | AlumaSeal II Sealing Foils for PCR and Cold Storage | VWR | 2 | Can be substituted with generic, can use tightly-fitted strip caps in place of seal |
| 1000µL Filter Tips | OT-2 Filter Tips, 1000µL | Opentrons | 1 | (box) Can be substituted with generic |
| 200µL Filter Tips | OT-2 Filter Tips, 200µL | Opentrons | 2 | (boxes) Can be substituted with generic |
| 10 ul Filter tips | TipOne Pipette Tips, 10 uL | TipOne | 2 | (boxes) Can be substituted with generic |
| AmpliTaq Gold PCR Mix | AmpliTaq Gold DNA Polymerase 5 mL | ThermoFisher | 1.2 | (mL) |
| Molecular water | Invitrogen RT-PCR Grade Water | Fisher Scientific | 0.912 | (mL) |
| Forward Primer - 12S MiFish F| 12S MiFish_U F Fluidigm V2 | IDT | 105 | (ul (10uM)) Primer must be diluted from 100uM stocks to 10uM |
| Reverse Primer - 12S MiFish R | 12S MiFish_U R Fluidigm | IDT | 105 | (ul (10uM)) Primer must be diluted from 100uM stocks to 10uM |
| TBE Buffer (10x) | TBE Buffer 10X Solution, Molecular Biology Grade, UltraPure | Thermo Scientific | 100 | (uL) |
| Agarose | Agarose LE, Molecular Biology Grade, UltraPure | Thermo Scientific | 4 | (g) |
| SYBR Safe | SYBR Safe DNA Gel Stain | Invitrogen | 20 | (uL) Light sensitive - do not expose to light |
| Gel stain loading dye | DNA Gel Loading Dye (6x) | Thermo Scientific | 480 | (ul per plate) |
| 100bp DNA Ladder | Generuler 100 bp DNA Ladder | Thermo Scientific | 6 | (ul per lane on gel) |
| Parafilm | Parafilm M Lab Film | Generic | 1 | (roll) Can substitute with generic brand |
| **Chemicals** |
| RNase AWAY | RNase AWAY Surface Decontaminant | ThermoFisher Scientific | 1 | (bottle) Used to sterilize lab surfaces and equipment |
| EtOH | Ethanol | Generic Brand | 1 | (wash bottle) Must be molecular grade ethanol |
| DI water | Deionized water | Generic | 900 | (mL) |
| (OPTIONAL) Clean-Up Protocol |
| AMPure XP Beads | AMPure XP Bead-Based Reagent | Beckman Coulter | 1 | (kit) |
| 96-well magnetic plate | MagDTR 96-Well Magnetic Separator | Edge Biosystems Inc | 1 | Can be substituted with generic brand |
| (OPTIONAL) Qubit |
| Qubit Reagents | Qubit dsDNA Quantification Assay Kit | Invitrogen | 1 | (kit) |
| Clear Qubit Assay tubes | 0.5 mL thin-walled, polypropylene tubes | Invitrogen | 98 | Must be correct tubes to allow for fluorometer to read concentration |

- Description: E.g., "filter".
- Product Name and Model: Provide the official name of the product.
- Manufacturer: Provide the name of the manufacturer of the product.
- Quantity: Provide quantities necessary for one application of the standard operating procedure (e.g., number of filters).
- Remark: For example, some of the consumable may need to be sterilized, some commercial solution may need to be diluted or shielded from light during the operating procedure.

## STANDARD OPERATING PROCEDURE

### Protocol

#### Preparation

1. Dilute primers from 100 uM to 10 uM if not already at 10uM.
2. Set up PCR under hood by wiping off all surfaces, pipettes, and racks with RNase AWAY and UV sterilizing for 5-10 mins.
3. Map out order of samples on 96-well PCR plate. Make sure to leave a space for a no template control (NTC) and positive control.

#### PCR

1. Make PCR master mix and add 24 ul to each well of PCR plate - possible use on Opentrons OT2 Pipetting Robot. Account for triplicate reactions.

- 12.5 ul [AmpliTaq Gold 360 Master Mix](commercial_mm)
- 9.5 ul molecular water
- 1 ul Fwd primer (10 μM) - [12S MiFish_U F Fluidigm V2](pcr_primer_name_forward)
- 1 ul Rev primer (10 μM) - [12S MiFish_U R Fluidigm](pcr_primer_name_reverse)

| PCR Primer Name | Direction | Sequence (5’ -> 3’) | Sequence (5’ -> 3’) with Fluidigm Adapters | Fluidigm Adapter |
| ----- | ----- | ----- |----|----|
| 12S MiFish F V2 | forward | [GCCGGTAAAACTCGTGCCAGC](pcr_primer_forward) | ACACTGACGACATGGTTCTACA xxx [GCCGGTAAAACTCGTGCCAGC](pcr_primer_forward) | CS1-TS-F |
| 12S MiFish R | reverse | [CATAGTGGGGTATCTAATCCCAGTTTG](pcr_primer_reverse) | TACGGTAGCAGAGACTTGGTCT xxx [CATAGTGGGGTATCTAATCCCAGTTTG](pcr_primer_reverse) | CS2-TS-R |

2. Add 1 ul of sample DNA (or molecular water for NTC) to respective triplicate wells for a total reaction volume of [25](amplificationReactionVolume) ul per well. Pipette up and down or vortex to fully distribute DNA into master mix.
3. Seal plate with PCR plate seal or strip caps.
4. Load plate onto thermal cycler and select "MBARI 12S Touchdown" program to run the following steps:

| PCR step | Temperature | Duration | Repetition |
| ----- | ----- | ----- | ----- |
| Initial Denaturation | 95°C | 15min | 1x |
| Touchdown Cycling |
| Denaturation | 94°C | 30s | 13x |
| Annealing | 69.5°C | 30s | 13x (changes -1.5°C each cycle) |
| Extension | 72°C | 90s | 13x |
| Normal Cycling |
| Denaturation | 94°C | 30s | 25x |
| Annealing | 50°C | 30s | 25x |
| Extension | 72°C | 45s | 25x |
| Final Extension | 72°C | 10min | 1x |
| Hold | 4°C | ∞ | |

#### Quality control, PCR clean-up

2% Agarose Gel
Following PCR amplification, pool triplicate PCR products then run through 2% agarose gel to confirm presence of target bands:

1. Make stock solution of TBE buffer (1x) in a 1-L glass container by adding 100 ml of stock TBE buffer (10x) to 900 ml DI water.
2. For a 5.5in x 5.5in gel tray, mix 200 ml of TBE buffer (1x) and 4 g of agarose in a flask. Use scale to weigh agarose.
3. Microwave mixture for 1 minute, followed by 15-30 second intervals. Watch carefully after 1 minute - mixture can bubble out of flask! The agarose should be fully dissolved so that the solution is mostly clear. Wear a protective glove when handling flask as the mixture will be hot.
4. Allow for gel mixture to cool in flask for 5-10 min. While cooling, set up gel tray (5.5in x 5.5in) in gel box. Make sure the tray is oriented properly and sealed tight for gel pouring. Add two gel combs for 20 wells each lane - total of 40 wells.
5. Once cooled to 50°C, add 20 ul of SYBR safe to the mixture and swirl the flask gently to mix (don't create bubbles!). SYBR safe is light sensitive so after adding to mixture, immediately close the vial and store in the dark.
6. Pour the gel mixture and remove any bubbles using a pipette tip.
7. Allow gel to set for 30-45 min.
8. Cut large strips of parafilm or use 8-strip tubes and label each sample as a position on the parafilm/tubes.
9. Pipette 1 ul of blue loading dye onto each sample position or into each tube.
10. Pipette 5 ul of DNA sample into loading dye and pipette to mix 2-3 times.
11. Once the gel is set, fill the gel box with enough TBE buffer (1x) to fully submerge the gel beneath ~1cm of buffer.
12. Carefully add samples (6 ul each) to gel and write down their positions.
13. Add 6 ul of ladder dye (green) to gel.
14. Run gel at 100 V for 40-50 min then visualize on gel reader machine.

(OPTIONAL) Purify PCR products using AMPure beads protocol (optimized for Opentrons)

1. Follow along with AMPure XP beads manufacturer protocol (begins on page 5 of manual - <https://www.beckmancoulter.com/wsrportal/techdocs?docname=B37419>).
2. Adjust bead ratio: 1.2x beads to sample volume for 12S.
3. Will need magnetic plate and fresh 70% ethanol.
4. End product will be ~40 ul of cleaned DNA eluted in molecular grade water.

(OPTIONAL) Run Qubit on final PCR Products

1. Follow manufacturer protocol for running Qubit: <https://tools.thermofisher.com/content/sfs/manuals/Qubit_dsDNA_HS_Assay_UG.pdf>.

(OPTIONAL) Run Second 2% Agarose Gel on Purified PCR Products

1. Follow along with previous gel instructions.

### Quality control

The inclusion of a negative control for PCR is to confirm the absence of contamination during the process. The inclusion of a positive control (mock community) is to confirm the PCR is amplifying DNA. There are several optional steps at the end of the process to confirm the presence and concentration of amplified DNA.

### Basic troubleshooting guide

Low Volume Post-PCR

- If using strip-caps, ensure they are tightly fitting on wells. Any gap in the lid will allow for some volume to evaporate during the PCR process on the thermal cycler. If using PCR plate seals, spin down the plate after taking it off the thermal cycler to ensure all condensation is drawn back into the well.

Contamination

- If there are contamination bands appearing on the gel, run another PCR ensuring full sterilization of work spaces and equipment under the hood and use new vials of AmpliTaq Gold and molecular water. If diluted primers are contaminated, use freshly-made aliquot of primers.

Weak Amplification

- If there are weak amplification bands on the gel, ensure the master mix and DNA is being fully mixed. You can also increase the concentration of primers or tweak the PCR process on the thermal cycler (increasing # of cycles of PCR or optimize annealing temperature). The addition of Bovine Serum Albumin (BSA) to master mix is also useful in some cases.

## REFERENCES
Not applicable.

## APPENDIX A: DATASHEETS
Not applicable.
