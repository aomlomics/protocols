---
# MIOP terms
methodology_category: Omics Analysis
project: # eDNA collected by the NOAA ship Okeanos Explorer
purpose: PCR [OBI:0000415]
analyses: PCR [OBI:0000415]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853], Pacific Ocean [GAZ:00000360]
broad_scale_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149], polymerase chain reaction [OBI:0000415]
target: mtCOI [NCIT:C105370]
creator: # names separated by commas
materials_required: vortexer [OBI:0400118], PCR instrument [OBI:0000989], agarose gel electrophoresis system [OBI:0001134]
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: 180 minutes (integer)
personnel_required: 1
language: en
issued: # 2025-09-03
audience: scientists
publisher: # institution
hasVersion: 1
license: CC0 1.0 Universal
maturity level: mature

# FAIRe terms
pcr_0_1: # 1
thermocycler: # Bio-Rad T100 Thermocycler
amplificationReactionVolume: # 10
assay_name: # Metazoa-COI-Leray-Geller
assay_validation: # not provided
targetTaxonomicAssay: # Metazoa
targetTaxonomicScope: # not provided
target_gene: # mitochondrial COI
target_subfragment: # # not provided
ampliconSize: # 419
pcr_primer_forward: # COI-mlCOIintF
pcr_primer_reverse: # COI-jgHCO2198
pcr_primer_name_forward: # GGWACWGGWTGAACWGTWTAYCCYCC 
pcr_primer_name_reverse: # TANACYTCNGGRTGNCCRAARAAYCA 
pcr_primer_reference_forward: # https://doi.org/10.1186/1742-9994-10-34
pcr_primer_reference_reverse: # https://doi.org/10.1111/1755-0998.12138
pcr_primer_vol_forward: # 0.3
pcr_primer_vol_reverse: # 0.3
pcr_primer_conc_forward: # 10
pcr_primer_conc_reverse: # 10
probeReporter: # not applicable
probeQuencher: # not applicable
probe_seq: # not applicable
probe_ref: # not applicable
probe_conc: # not applicable
commercial_mm: # 2X GoTaq Hot Start Master Mix
custom_mm: # Triplicate PCR reactions were run in 10 uL reaction volumes, with 1.0 uL of environmental DNA template, 5.0 uL of 2X GoTaq Hot Start, 3.3 uL of sterile water, 0.1 uL of Bovine Serum Albumin (BSA) (0.2 mg/mL), and 0.3 uL of each primer (10 uM)
pcr_dna_vol: # 1.0
pcr_rep: # 3
nucl_acid_amp: # not applicable
pcr_cond: # initial denaturation:95_7;denaturation:95_0.5;annealing:46_0.5;elongation:72_0.5;final elongation:72_5;35
annealingTemp: # 46
pcr_cycles: # 35
pcr_analysis_software: # not provided
pcr_method_additional: # not provided
---

# Protocol Template - PCR

## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

- MIOP terms are listed in the YAML frontmatter of this page.
- See [MIOP_definition.md](https://github.com/BeBOP-OBON/0_protocol_collection_template/blob/main/MIOP_definition.md) for list and definitions.

### Making eDNA FAIR (FAIRe)

- FAIRe terms are listed in the YAML frontmatter of this page.
- See <https://fair-edna.github.io/download.html> for the FAIRe checklist and more information.
- See <https://fair-edna.github.io/guidelines.html#missing-values> for guidelines on missing values that can be used for missing FAIRe or MIOP terms.

### Authors

- All authors known to have contributed to the preparation of this protocol, including those who filled in the template.
- Visit https://orcid.org/ to register for an ORCID.
- Date is the date the author first worked on the protocol.

| PREPARED BY  | AFFILIATION  | ORCID        | DATE       |
| ------------ | ------------ | ------------ | ---------- |
| Steven Auscavitch | National Museum of Natural History, Smithsonian Institution | <https://orcid.org/0000-0001-5777-4814> | 2025-09-03 |
| Allen Collins | NOAA NSL; Smithsonian Institution | <https://orcid.org/0000-0002-3664-9691> | 2025-09-03 |

### Related Protocols

| PROTOCOL NAME | LINK         | VERSION      | RELEASE DATE | INTERNAL/EXTERNAL |
| ------------- | ------------ | ------------ | ------------ | ----------------- |
| OKEX PCI eDNA extraction | https://github.com/aomlomics/protocol-extract-dna-okex/blob/main/BeBoP_protocol_OKEX_NMNH_pcl_eDNA_extraction_20250501.md | 1.0 | 2024-03-01 | External |

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0 | 2025-09-03 | Initial release |

### Acronyms and Abbreviations

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| eDNA | environmental DNA |
| NOAA | National Oceanic and Atmospheric Administration |
| NSL | National Systematics Laboratory |
| SI | Smithsonian Institution |
| NMNH  | National Museum of Natural History  |
| NTC | No template control |
| PCR | Polymerase chain reaction |
| EtOH | Ethanol |

### Glossary

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| None  | None  |

## BACKGROUND

Environmental DNA (eDNA) is rapidly becoming a “go-to” tool for monitoring and assess biodiversity in the marine environment. DNA extracted from an environmental sample contains molecular signatures in the environment. Therefore, these eDNA samples can be used to generate metabarcode libraries (amplifications of specific gene regions of interest) in order to characterize biological communities. 

### Summary

The COI metabarcoding protocol detailed here is designed to prepare COI fragments for sequencing on Illumina platforms using a two-step amplification process. The first step, described here, (which we call the amplification PCR) will amplify your region of interest and tail (Note: we opt for iTru tails), depending on your chosen primer design. The tail acts as the priming site for future indices and the Illumina-required sequencing adapter to your product. The resulting libraries are dual-indexed and can be sequenced on any Illumina sequencer. Indexing PCR protocols are not described but many options are available depending on if sequencing will be done with a commercial facility or in-house.

### Method Description and Rationale

This procedure uses polymerase chain reaction to amplify the mitochondrial COI region in an environmental sample of DNAs. This procedure is best suited for targeting metazoan DNA.
This protocol was selected because it is reproducible, accurate, is easy to execute by individuals with basic wet lab bench skills.

### Spatial Coverage and Environment(s) of Relevance

This protocol was designed for environmental DNA from marine environments. For the NOAA Okeanos Explorer program, samples typically are collected from oceanic mesopelagic, oceanic bathypelagic, and oceanic abyssopelagic zones.

## PERSONNEL REQUIRED

One technician is sufficient to complete this procedure.

### Safety

Basic laboratory safety measures and appropriate personal protective equipment should be used to avoid exposure to hazardous reagents and situations.

### Training Requirements

Basic wet lab bench skills, including pipetting and aseptic technique, are required.

### Time Needed to Execute the Procedure

This procedure can be conducted in approximately 180 minutes, but is dependent on the number of samples processed.

## EQUIPMENT

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| **Durable equipment** |
| Benchtop vortexer | Nonspecific | Nonspecific | 1 | N/A |
| PCR workstation with UV Lamp | AirClean600 PCR Workstation | BioExpress | 1 | UV lamp built into PCR workstation |
| P1000 Pipette | Pipet-Lite LTS Pipette L-1000XLS+ | Mettler Toledo | 1 | Single or Multichannel |
| P200 Pipette  | Pipet-Lite LTS Pipette L-200XLS+ | Mettler Toledo | 1 | Single or Multichannel |
| P20 Pipette | Pipet-Lite LTS Pipette L-20XLS+  | Mettler Toledo | 1 | Single or Multichannel |
| P10 Pipette | Pipet-Lite LTS Pipette L-10XLS+  | Mettler Toledo | 1 | Single or Multichannel  |
| PCR plate mat (Sterile/Autoclaved) | Unknown | Unknown | 1 per reaction | Alternatively, heat-sealed sheets can be used to seal reactions |
| Thermocycler | Bio-Rad T100 Thermocycler | Bio-Rad | 1 | Or similar |
| Silicon PCR mats,reusable | Sealing Mats for 96-Well PCR Plates (#2239442) | Bio-Rad | 1, or as needed | Can be substituted with sterile, consumable heat-sealed sheets |
| Gel Electrophoresis dock and power supply | Varies | Varies | 1 | NA |
| Microwave | Generic Microwave | Generic Brand | 1 | |
| Gel Combs | Gel Electrophoresis Combs | Generic Brand | 8 | NA |
| Magnetic Stand | DynaMag-96 Side Magnet (12331D) | ThermoFisher Scientific | 1 | NA |
| Nucleic Acid Quantification | Qubit or Quant-IT Assay Readers | ThermoFisher Scientific | 1 kit(s) | Or other quantification assay |

| **Consumable equipment** |
| Gloves | Nitrile Gloves, Exam Grade, Powder-free | Varies | 1 box | Can be substituted with generic |
| Hype-Wipe | CurrentTechnologies 9103 | Current Technologies | As needed | As needed |
| KimWipes | KimwipesTM 34155  | Kimberly-Clark | 1 box | As needed |
| 0.2 mL 96-well PCR Plate | MSP 96-wWell Half-Skirt PCR Plate #15-3590 | Med Supply Partners | As needed | Autoclave, if not sterilized |
| 0.2 ml 8-well PCR strip tube | PCR Reaction Strips 8 x 0.2mL, attached dome cap (T320-3N) | Simport | As needed | Autoclave, if not sterilized |
| Eppendorf LoBind Tubes (1.5 mL) | EP022431021 | Eppendorf | As needed | Autoclave, if not sterilized |
| 1.5% Agarose Gels (pre-made) | Varies | Varies | Include appropriate DNA stain & loading dye when electing gel method. If pre-made gels are not available, prepare 1.5% agarose gels using genetic method. |
| 1000µL Filtered Tips | Filter Tips, 1000µL | Mettler Toledo | As needed | Can be substituted with generic |
| 200µL Filtered Tips | Filter Tips, 200µL | Mettler Toledo | As needed | Can be substituted with generic |
| 10 ul Filtered tips | Pipette Tips, 10 uL | Mettler Toledo | As needed | Can be substituted with generic |
| Clear Qubit Assay tubes | 0.5 mL thin-walled, polypropylene tubes | Invitrogen | 98 | Must be correct tubes to allow for fluorometer to read concentration |

| **Chemicals** |
| Surface Disinfectant | DNA Away | Thermo-Fisher | 1 bottle | As needed. Can be substituted with 10% bleach |
| Ethanol (70%) | Varies | Varies | As needed | For surface and equipment cleaning |
| Ethanol (80%) | Varies | Varies | As needed | For bead cleaning |
| Absolute Ethanol (200 Proof)| Varies | Varies | As needed |  |
| GoTaq Hot Start Polymerase |  2X GoTaq Hot Start Master Mix (colorless) - M5132 | Promega Corp. | Sample quantity dependent | 
| Bovine Serum Albumin (BSA) 20 mg/mL| | Varies | Varies | Sample quantity dependent | |
| COI primer F | NA | Integated DNA Technologies | Sample quantity dependent | NA |
| COI primer R | NA | Integated DNA Technologies | Sample quantity dependent | NA |
| Kapa Pure Beads | KK8000 - 5 mL | Roche | Sample quantity dependent | AmPure magnetic beads also work. |
| 10 mM Tris, pH 8.0 | Varies | Varies | Sample quantity dependent | Diluted 1X TE to 0.1X would also work. |
| Sterile, Nuclease-Free Water | NA | Sample quantity dependent | NA |
| Unique Indexing primers (i5 & i7) | | | | Nextera or iTru adapters and indexes are available. In this protocol, we used iTru.
| DNA Quantification Assay Kit | Qubit™ dsDNA Quantification Assay Kit (High Sensitivity)  | ThermoFisher Scientific | As needed |  |
| Gel electrophoresis buffer | 1X SB | Unknown | As needed | or any other run buffer substitute (e.g. TBE) | 
| Nucleic acid stain | GelRed® Nucleic Acid Stain 10000X | Biotium | As needed | Can be substituted with other nucleic acid stains |
| Gel Loading Dye | Varies | Varies | As needed | NA |
| 100bp DNA Ladder | Generuler 100 bp DNA Ladder | Thermo Scientific | As needed | Or similar reagent |
| Qubit Reagents | Qubit dsDNA Quantification Assay Kit | Invitrogen | 1 | (kit) |

## STANDARD OPERATING PROCEDURE

### Preparation

Quantification & dilution of DNA
1. This protocol assumes a known DNA input quantity. If not known, quantify your DNA sample(s) using a QuBit or Quant-iT assay. 
2. Normalize your DNA to desired concentration, if desired.
3. Set up a PCR plate map with triplcate reactions for each sample, along with 3 NTC reactions. NTC reactions will use 1 uL of sterile water instead of DNA template.

### PCR

COI PCR Reaction
4. Retrieve reagents from the freezer and allow them to thaw at room temperature. Vortex well and spin down.
5. Perform the initial PCR in triplicate using 10 µL reactions. A master mix may be created from the master mix polymerase, sterile water, primer forward and reverse, and BSA. Follow the rection mixture below to make your master mix, scaling up accordingly. Allow for ~10% overage calculation for pipetting error. Volumes are given in µL. Mix thoroughly, then spin briefly.  Master mixes can be made in sterile, autoclaved 1.5 ml Eppendorf Lo-Bind tubes.
6. Aliquot 9.0 µL of master mix into each PCR tube, then add 1.0 µL of template DNA. Cover plate with a silicone mat or heat seal, then spin to collect liquid to the bottom of wells.
7. Place tubes/plate into a thermocycler and run the initial amplification PCR program (see PCR Cycling Program).
8. After the PCR finishes, proceed directly to Gel Verification, or samples may be stored at 4°C for up to 3 days (or at -20°C for longer periods). 


**Primers**: PCR primer sequences

Note: Ensure that primer sequences come with the appropriate (e.g. Nextera or iTru) adapter sequences for your sequencing technology of choice. This should be decided upon beforehand, along with your sequencing facility and technology of choice.

| PCR Primer Name | Direction | Sequence (5’ -> 3’)|
| ----- | ----- | ----- |
| COI-mlCOIintF | forward | GGWACWGGWTGAACWGTWTAYCCYCC |
| COI-jgHCO2198 | reverse | TANACYTCNGGRTGNCCRAARAAYCA |

**Reaction Mixture**: PCR reagents, volumes, initial and final concentrations

| Reagent | Volume | Initial Concentration | final concentration|
| ----- | ----- | ----- | ----- |
| sterile nuclease-free water | 3.3 uL | NA | NA |
| 2X GoTaq Hot Start Master Mix | 5.0 uL | 2X | 1X |
| 10 uM primer COI-mlCOIintF | 0.3 uL | 10 uM | 0.3 uM |
| 10 uM primer COI-jgHCO2198 | 0.3 uL | 10 uM | 0.3 uM |
| BSA | 0.1 uL | 20 mg/uL | 0.2 mg/uL |
| Template eDNA | 1.0 uL | NA | NA |

**PCR Cycling Program**: 

Initial PCR Amplification 
| PCR Step | Temperature | Duration | Repetition |
| ----- | ----- | ----- | ----- |
| Initial denaturation | 95°C | 7 min. | NA |
| Denaturation | 95°C | 30s | 35 cycles |
| Annealing | 46°C| 30s | 35 cycles |
| Extension | 72°C | 30s  | 35 cycles |
| Final Extension | 72°C | 5 min. | NA |
| Hold | 12°C | Infinite | NA |

### Quality Control

Gel verification (Recommended)
1. Prepare a 1.5% agarose gel using 1X SB. Arrange combs to reflect the number of samples and replicates, including a space for ladder.
2. Mix 2 µl PCR product with 2 µl 2X loading dye/10X GelRed. Load 4 uL of PCR product + loading dye/10X GelRed into each respective well. Gel should be immersed with 1X SB. Run gels for a 5-7 minutes at 125V.
3. Product size should be ~430 bp for invertebrate metabarcoding COI primers, depending on your adapter and the presence of heterogeneity spacers, if included on the primer.
4. Following Gel Verification, pool PCR replicates for each sample, omitting any volumes that had incorrect bands present. A full volume of the remaining product should be 24 uL (8 uL X 3 replicates). 
5. Samples may be stored at 4°C for up to 3 days (or at -20°C for longer periods).

#### Positive Control

As needed, but can be optional.

#### Negative Control

Non-template control (NTC) reaction(s) using sterile, nuclease-free water (or PCR grade water) in place of DNA template are used for each master mix prepared or PCR reaction plate. 

### PCR Clean-up

Clean up of initial amplification with Kapa Pure Beads
1. Remove KAPA Pure beads from the fridge and allow to come to room temperature. While you wait, make fresh 80% Ethanol (450 µl per sample).
2. Vortex the beads until fully resuspended (~30 seconds).
3. To 24 µL of pooled PCR product, add 28.8 µL of KAPA Pure beads (1.2X bead-to-sample ratio). 
4. Mix thoroughly by pipetting up/down at least 10 times.
5. Incubate at room temperature for 5 minutes to bind the DNA to the beads.
6. Place the plate/tubes on a magnet for ~3 minutes, or until the supernatant is clear and beads are pelleted.
7. Carefully remove and discard the supernatant, making sure to not disturb the pellet.
8. With the plate/tubes still on the magnet, wash the beads by adding 200µL of 80% ethanol. Do not mix.
9. Incubate at room temp for 30 seconds.
10. Remove and discard the supernatant.
11. Repeat the ethanol wash.
12. Carefully remove any residual ethanol using a P20 pipette. 
13. Allow beads to airdry for 3 to 5 minutes. Avoid overdrying to the point that the bead pellet starts to crack.
14. Remove the plate from the magnet. Add 22 µL of 10 mM Tris-HCl, pH 8.0 to each well and use a pipette to fully resuspend the beads.
15. Incubate the plate at room temperature for 5 minutes.
16. Place the plate back on the magnet for ~3 minutes, or until the supernatant clears.
17. Carefully transfer 20 µL of the clear supernatant to a new plate/tube, making sure to not disturb the bead pellet.
18. After the cleanup, go directly to Step 5, or samples may be stored at 4°C for up to 3 days (or at -20°C for longer periods).

### Basic Troubleshooting Guide

Not applicable.

## REFERENCES

Not applicable.

## APPENDIX A: DATASHEETS

Not applicable.
