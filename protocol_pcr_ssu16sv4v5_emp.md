---
# MIOP terms
methodology_category: Omics Analysis
project: NOAA Atlantic Oceanographic and Meteorological Laboratory OMICS Lab Protocols
purpose: PCR [OBI:0000415]
analyses: PCR [OBI:0000415]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853]
broad_scale_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149], polymerase chain reaction [OBI:0000415]
target: 16S [NCIT:C105370]
creator: Luke Thompson, Sean Anderson
materials_required: vortexer [OBI:0400118], PCR instrument [OBI:0000989], agarose gel electrophoresis system [OBI:0001134]
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: 240
personnel_required: 1
language: en
issued: 2021-02-08
audience: scientists
publisher: NOAA Atlantic Oceanographic and Meteorological Laboratory; Mississippi State University's Northern Gulf Institute

# FAIR eDNA terms
pcr_0_1: 1
thermocycler: Eppendorf Mastercycler Nexus Thermal Cycler
amplificationReactionVolume: 25
assay_name: ssu16sv4v5_emp
assay_validation: not provided
targetTaxonomicAssay: 16S rRNA gene sequencing targeting the V4-V5 region using primers 515F and 926R
targetTaxonomicScope: Prokaryotes, including Bacteria and Archaea
target_gene: 16S rRNA
target_subfragment: V4-V5
ampliconSize: 411
pcr_primer_forward: GTGYCAGCMGCCGCGGTAA
pcr_primer_reverse: CCGYCAATTYMTTTRAGTTT
pcr_primer_name_forward: 515F-Y
pcr_primer_name_reverse: 926R
pcr_primer_reference_forward: 10.1111/1462-2920.13023
pcr_primer_reference_reverse: 10.1111/1462-2920.13023
pcr_primer_vol_forward: 1.0
pcr_primer_vol_reverse: 1.0
pcr_primer_conc_forward: 10
pcr_primer_conc_reverse: 10
probeReporter: not applicable
probeQuencher: not applicable
probe_seq: not applicable
probe_ref: not applicable
probe_conc: not applicable
commercial_mm: AmpliTaq Gold 360 Master Mix, Thermo Fisher Scientific
custom_mm: PCR reactions were run in 25 uL reaction volumes, with 1.0 uL of DNA, 12.5 uL of AmpliTaq Gold, 9.5 uL of water, and 1.0 uL of each primer (10 uM).
pcr_dna_vol: 1.0
pcr_rep: 1
nucl_acid_amp: https://doi.org/10.1111/1462-2920.13023
pcr_cond: initial denaturation:95_3;denaturation:95_0.75;annealing:50_0.75;elongation:72_1.5;final elongation:72_10;4
annealingTemp: 50
pcr_cycles: 30
pcr_analysis_software: not provided
pcr_method_additional: not provided
---

# NOAA/AOML PCR Protocol 16S rRNA V4-V5 (EMP)

## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

See https://github.com/BeBOP-OBON/miop/blob/main/model/schema/terms.yaml for list and definitions.

| MIOP Term  | Value |
| ------------- | ------------- | 
| methodology category  | Omics Analysis |
| project  | NOAA Atlantic Oceanographic and Meteorological Laboratory OMICS Lab Protocols |
| purpose  | PCR [OBI:0000415] |
| analyses  | PCR [OBI:0000415] |
| geographic location  | Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853] |
| broad-scale environmental context  | marine biome [ENVO:00000447], marine photic zone [ENVO:00000209] |
| local environmental context  | marine biome [ENVO:00000447], marine photic zone[ENVO:00000209] |
| environmental medium  | sea water [ENVO:00002149] , polymerase chain reaction [OBI:0000415] |
| target  | 16S [NCIT:C105370]|
| creator  | Luke Thompson, Sean Anderson |
| materials required  | vortexer [OBI:0400118], PCR instrument [OBI:0000989], agarose gel electrophoresis system [OBI:0001134] |
| skills required  | sterile technique, pipetting skills, standard molecular technique |
| time required  | 240 |
| personnel required  | 1 |
| language  | en |
| issued  | 2021-02-08 |
| audience  | scientists |
| publisher  | NOAA Atlantic Oceanographic and Meteorological Laboratory; Mississippi State University's Northern Gulf Institute |

### Authors

| PREPARED BY | AFFILIATION | ORCID | DATE |
| ------------- | ------------- | ------------- | ------------- |
| Luke Thompson | NOAA/AOML, MSU/NGI | https://orcid.org/0000-0002-3911-1280 | 2021-02-28 |
| Sean Anderson | NOAA/AOML, MSU/NGI | https://orcid.org/0000-0003-3096-1120 | 2021-02-28 |
| Sammy Harding | NOAA/AOML, MSU/NGI | https://orcid.org/0009-0008-8885-6140 | 2024-08-19 |

- All authors known to have contributed to the preparation of this protocol should be listed, including those who filled in the template.
- Visit https://orcid.org/ to register for an ORCID.

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2021-02-28 | Initial release |
| 1.0.1 | 2024-10-23 | Formatting edits |

- Release date is the date when a given protocol version was finalised.
- Description of revisions includes a brief description of what was changed relative to the previous version.

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
| Extraction Blank | A type of negative control to confirm there is no contamination during DNA extractions. Normally an empty filter extracted and PCR amplified alongside other samples. |
| No Template Control | A type of negative control during PCR to confirm there is no contamination during the PCR process. Normally nuclease-free water run in place of DNA on a PCR. |

## BACKGROUND

### Summary

This protocol describes steps for performing PCR for 16S marker gene regions using eDNA extracted from Sterivex at NOAA's AOML. There are several optional steps at the end of the protocol including using AMPure beads to clean up PCR products. Some steps (e.g. PCR plate preparation, AMPure bead cleanup, sequencing plate dilutions) have been or can be optimized for use with the Opentrons OT2 robot. This protocol closely aligns with the following 16S protocol: https://www.protocols.io/view/fuhrman-lab-515f-926r-16s-and-18s-rrna-gene-sequen-j8nlkpd1g5r7/v2?step=102.

### Method description and rationale

This protocol is used for PCR amplifying the 16S V4-V5 marker gene regions of environmental DNA. Fluidigm adapter are already present on the primers described in the following protocol. It is highly reproducible and can easily be adapted for any number of samples (i.e. a full 96-well plate or a few samples).

### Spatial coverage and environment(s) of relevance

This protocol can be used to amplify the 16S marker gene region of any eDNA sample.

## PERSONNEL REQUIRED

One person with molecular biology experience.

### Safety

There are no hazardous chemicals or materials involved in this protocol. Standard lab safety techniques should still be used such as wearing PPE to avoid skin or eye contact.

### Training requirements

Basic molecular biology training is sufficient for this protocol including sterile technique, pipetting small volumes and programming/running PCR thermal cyclers.

### Time needed to execute the procedure

Protocol takes about 4 hours (240 minutes) including thermal cycler run time.

## EQUIPMENT

For 96-well Plate:

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| Durable equipment |
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
| Consumable equipment |
| Gloves | Nitrile Gloves, Exam Grade, Powder-free | ULINE | 1 box | Can be substituted with generic |
| Kim Wipes | KimWipe Delicate Task Wipers | KimTech | 1 box | Can be substituted with generic |
| 96-well PCR Plate | | Armadillo PCR Plate, 96-well, clear, clear wells | ThermoFisher | 3 | |
| PCR Plate Seal | AlumaSeal II Sealing Foils for PCR and Cold Storage | VWR | 2 | Can be substituted with generic, can use tightly-fitted strip caps in place of seal |
| 1000µL Filter Tips | OT-2 Filter Tips, 1000µL | Opentrons | 1 box | Can be substituted with generic |
| 200µL Filter Tips | OT-2 Filter Tips, 200µL | Opentrons | 2 boxes | Can be substituted with generic |
| 10 ul Filter tips | TipOne Pipette Tips, 10 uL | TipOne | 2 boxes | Can be substituted with generic |
| AmpliTaq Gold PCR Mix | AmpliTaq Gold DNA Polymerase 5 mL | ThermoFisher | 1.2 mL | |
| Molecular water | Invitrogen RT-PCR Grade Water | Fisher Scientific | 0.912 mL | |
| Forward Primer - 515 F | 16S 515F Fluidigm Primer | IDT | 105 ul (10uM) | Primer must be diluted from 100uM stocks to 10uM |
| Reverse Primer - 926 R | 16S 926R Fluidigm Primer | IDT | 105 ul (10uM) | Primer must be diluted from 100uM stocks to 10uM |
| TBE Buffer (10x) | TBE Buffer 10X Solution, Molecular Biology Grade, UltraPure | Thermo Scientific | 100 uL | |
| Agarose | Agarose LE, Molecular Biology Grade, UltraPure | Thermo Scientific | 4g | |
| SYBR Safe | SYBR Safe DNA Gel Stain | Invitrogen | 20 uL | Light sensitive - do not expose to light |
| Gel stain loading dye | DNA Gel Loading Dye (6x) | Thermo Scientific | 480 ul (per plate) | |
| 100bp DNA Ladder | Generuler 100 bp DNA Ladder | Thermo Scientific | 6 ul per lane on gel | |
| Parafilm | Parafilm M Lab Film | Generic | 1 roll | Can substitute with generic brand |
| Chemicals |
| RNase AWAY | RNase AWAY Surface Decontaminant | ThermoFisher Scientific | 1 bottle | Used to sterilize lab surfaces and equipment |
| EtOH | Ethanol | Generic Brand | 1 wash bottle | Must be molecular grade ethanol |
| DI water | Deionized water | Generic | 900 mL | |
| (OPTIONAL) Clean-Up Protocol |
| AMPure XP Beads | AMPure XP Bead-Based Reagent | Beckman Coulter | 1 kit | |
| 96-well magnetic plate | MagDTR 96-Well Magnetic Separator | Edge Biosystems Inc | 1 | Can be substituted with generic brand |
| (OPTIONAL) Qubit |
| Qubit Reagents | Qubit dsDNA Quantification Assay Kit | Invitrogen | 1 kit | |
| Clear Qubit Assay tubes | 0.5 mL thin-walled, polypropylene tubes | Invitrogen | 98 | Must be correct tubes to allow for fluorometer to read concentration |

## STANDARD OPERATING PROCEDURE

### Protocol

Preparation

1. Dilute primers from 100 uM to 10 uM if not already at 10 uM.
2. Set up PCR under hood by wiping off all surfaces, pipettes, and racks with RNase AWAY and UV sterilizing for 5-10 mins.
3. Map out order of samples on 96-well PCR plate. Make sure to leave a space for a no template control (NTC) and positive control.

#### PCR

1. Make PCR master mix and add 24 ul to each well of PCR plate - possible use on Opentrons OT2 Pipetting Robot.
- 12.5 ul AmpliTaq Gold PCR Mix
- 9.5 ul molecular water 
- 1 ul Fwd primer (10 μM) - 515 F
- 1 ul Rev primer (10 μM) - 926 R

| PCR Primer Name | Direction | Sequence (5’ -> 3’)| Sequence (5’ -> 3’) with Fluidigm Adapters | Fluidigm Adapter |
| ----- | ----- | ----- | ----- | ----- |
| 515 F | forward | GTGYCAGCMGCCGCGGTAA | ACACTGACGACATGGTTCTACA xxx GTGYCAGCMGCCGCGGTAA | CS1-TS-F |
| 926 R | reverse | CCGYCAATTYMTTTRAGTTT | TACGGTAGCAGAGACTTGGTCT xxx CCGYCAATTYMTTTRAGTTT | CS2-TS-R |

2. Add 1 ul of sample DNA (or molecular water for NTC) to respective wells for a total reaction volume of 25 ul per well. Pipette up and down or vortex to fully distribute DNA into master mix.
3. Seal plate with PCR plate seal or strip caps.
4. Load plate onto thermal cycler and select program to run the following steps:

| PCR step | Temperature | Duration | Repetition |
| ----- | ----- | ----- | ----- |
| Initial Denaturation | 95°C | 180s | 1x |
| Denaturation | 95°C | 45s | 30x |
| Annealing | 50°C | 45s | 30x |
| Extension | 72°C | 90s | 30x |
| Final Extension | 72°C | 10min | 1x |
| Hold | 4°C | ∞ | |

#### Quality control, PCR clean-up

2% Agarose Gel
Following PCR amplification, run products through 2% agarose gel to confirm presence of target bands:
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

1. Follow along with AMPure XP beads manufacturer protocol (begins on page 5 of manual - https://www.beckmancoulter.com/wsrportal/techdocs?docname=B37419).
2. Will need magnetic plate and fresh 70% ethanol.
3. Adjust bead ratio - 0.8x beads to sample volume for 16S.
4. End product will be ~40 ul of cleaned DNA eluted in molecular grade water.

(OPTIONAL) Run Qubit on final PCR Products

1. Follow manufacturer protocol for running Qubit: https://tools.thermofisher.com/content/sfs/manuals/Qubit_dsDNA_HS_Assay_UG.pdf.

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

- If you are seeing weak amplification bands on the gel, ensure the master mix and DNA is being fully mixed. You can also increase the concentration of primers or tweak the PCR process on the thermal cycler (increasing # of cycles of PCR or optimize annealing temperature). The addition of Bovine Serum Albumin (BSA) to master mix is also useful in some cases. 

## REFERENCES

Furman Lab 515F-926R 16S rRNA Gene Sequencing Protocol V.2
https://www.protocols.io/view/fuhrman-lab-515f-926r-16s-and-18s-rrna-gene-sequen-j8nlkpd1g5r7/v2?step=9

AMPure Beads Protocol (Beckman Coulter)
https://www.beckmancoulter.com/wsrportal/techdocs?docname=B37419

Qubit Protocol (Thermo Fisher)
https://tools.thermofisher.com/content/sfs/manuals/Qubit_dsDNA_HS_Assay_UG.pdf
