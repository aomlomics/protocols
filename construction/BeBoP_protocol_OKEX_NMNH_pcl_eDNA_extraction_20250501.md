---
# MIOP terms
methodology_category: sample extraction and purification
project: Characterization of eDNA sampled by the NOAA Ship Okeanos Explorer
purpose: biodiversity assessment objective [OBI:0001969]
analyses: DNA extraction [OBI:0000257]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853], Pacific Ocean
broad_scale_environmental_context: # marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: # marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149]
target: deoxyribonucleic acid (DNA) [NCIT:C449]
creator: Steven Auscavitch, Allen Collins
materials_required: # vortexer [OBI:0400118], centrifuge [OBI:0400106], DNA extraction/purification instrument [OBI:0001117], multichannel electronic pipette [OBI:0001083] (optional)
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: # minutes (integer)
personnel_required: 1
language: en
issued: 2024-11-26
audience: scientists
publisher: National Museum of Natural History, Smithsonian Institution
hasVersion: 1
license: CC0 1.0 Universal
maturity level: mature

# FAIRe terms
samp_vol_we_dna_ext: 100
samp_vol_we_dna_ext_unit: microliter
nucl_acid_ext_lysis: Enzymatic
nucl_acid_ext_sep: Centrifugation
nucl_acid_ext: Phenol-Chloroform Manual Extraction
nucl_acid_ext_kit: Not applicable
nucl_acid_ext_modify: Not applicable
dna_cleanup_0_1: 0
dna_cleanup_method: Not applicable
concentration: Not applicable
concentration_method: Qubit dsDNA High Sensitivity Assay Kit, Quant-iT dsDNA Assay Kit High Sensitivity
ratioOfAbsorbance260_280: Not applicable
pool_dna_num: Not applicable
nucl_acid_ext_method_additional: Not applicable
---

# Protocol Template - DNA Extraction

## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

### Making eDNA FAIR (FAIRe)

- FAIRe terms are listed in the YAML frontmatter of this page.
- See <https://fair-edna.github.io/download.html> for the FAIRe checklist and more information.
- See <https://fair-edna.github.io/guidelines.html#missing-values> for guidelines on missing values that can be used for missing FAIRe or MIOP terms.

### Authors

| PREPARED BY  | AFFILIATION  | ORCID        | DATE       |
| ------------ | ------------ | ------------ | ---------- |
| Steven Auscavitch | National Museum of Natural History, Smithsonian Institution | <https://orcid.org/0000-0001-5777-4814> | 2024-03-01 |
| Allen Collins | NOAA NSL; Smithsonian Institution | <https://orcid.org/0000-0002-3664-9691> | 2024-03-01 |

### Related Protocols

- This section contains protocols that should be known to users of this protocol.
- Internal Protocols: Derivative or altered protocols, or other protocols in this workflow.
- External Protocols: Protcols from manufacturers or other groups. 
- Include the link to each protocol.
- Include the version number (internal) or access date (external) of the protocol when it was accessed.

#### Internal Protocols

| PROTOCOL NAME | LINK | VERSION | RELEASE DATE |
| ------------- | ------------ | ------------ | ---------- |
| Content | Content | Content | Content |

#### External Protocols

| PROTOCOL NAME | LINK | ISSUER / AUTHOR | ACCESS DATE |
| ------------ | ------------ | ------------ | ---------- |
| Content | Content | Content | Content |

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2024-03-01 | Initial release |

### Acronyms and Abbreviations

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| eDNA | environmental DNA |
| NOAA | National Oceanic and Atmospheric Administration |
| NSL | National Systematics Laboratory |
| SI | Smithsonian Institution |
| NMNH  | National Museum of Natural History  |

### Glossary

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| None  | None  |

## BACKGROUND

### Summary

This document describes the required protocol to conduct Phenol-Chloroform extractions of environmental DNA (eDNA) collected at sea on the NOAA Ship Okeanos Explorer. This method of eDNA extraction is adapted from a similar protocol by Everett & Park 2018.

### Method Description and Rationale

This protocol provides a method to extract and quantify environmental DNA from filtered seawater samples that have been preserved in the field in Longmire's Lysis Buffer.

### Spatial Coverage and Environment(s) of Relevance

Oceanic Epipelagic Zone [ENVO:01000035]
Marine Mesopelagic Zone [ENVO:00000213]
Marine Bathypelagic Zone [ENVO:00000211]
Marine Abyssopelagic Zone [ENVO:00000212]

## PERSONNEL REQUIRED

This procedure can be done by one individual trained in basic wet lab bench techniques.

### Safety

Basic laboratory safety measures and appropriate personal protective equipment should be used to avoid exposure to hazardous reagents and situations.

### Training Requirements

Specify technical training required for the good execution of the procedure.

### Time Needed to Execute the Procedure

Total time (estimated): 24 hours
Sample preparation: 1 hour
Extraction: 4 hours
Quantification: 1 hour

## EQUIPMENT

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| **Durable equipment** |
| Vortexing incubator | VorTemp56 | Labnet International Inc. | 1 | With appropriate inserts as needed |
| Benchtop vortexer | Nonspecific | Nonspecific | 1 | N/A |
| Fume Hood | Nonspecific | Nonspecific | Nonspecific  | None |
| PCR workstation with UV Lamp | AirClean600 PCR Workstation | BioExpress | 1 | UV lamp built into PCR workstation |
| P1000 Pipette | Pipet-Lite LTS Pipette L-1000XLS+ | Mettler Toledo | 1 | Or similar |
| P200 Pipette | Pipet-Lite LTS Pipette L-200XLS+ | Mettler Toledo | 1 | Or similar |
| P20 Pipette | Pipet-Lite LTS Pipette L-20XLS+  | Mettler Toledo | 1 | Or similar |
| Refrigerated Centrifuge | Eppendorf Centrifuge 5425 R | Eppendorf | 1 | Or similar refrigerated centrifuge with 1.5/2.0 mL and 5.0 mL well rotors |
| **Consumable equipment** |
| Hype-Wipe | CurrentTechnologies 9103 | Current Technologies | As needed | As needed |
| KimWipes | KimwipesTM 34155  | Kimberly-Clark| 1 box | As needed |
| Eppendorf LoBind Tubes (5 mL) | EP0030108310 | Eppendorf | At least 2 per sample | Autoclave, if not sterilized |
| Eppendorf LoBind Tubes (1.5 mL) | EP022431021 | Eppendorf | At least 2 per sample | Autoclave, if not sterilized |
| **Chemicals** |
| Surface Disinfectant | DNA Away | Thermo-Fisher | 1 bottle | As needed. Can be substituted with 10% bleach |
| Ethanol (70%) Surface Cleaner |  |  | As needed |  |
| Proteinase K  |  |  | As needed |  |
| Ethanol (70%) Surface Cleaner |  |  | As needed |  |
| Absolute Ethanol (200 Proof)|  |  | As needed |  |
| Isopropanol (100%) |  |  | As needed |  |
| Longmire's Lysis Buffer | Self-prepared | Multiple | As needed  | At least 3 mL needed for extraction blank |
| Lysis Buffer | Longmire's Solution| Multiple | As needed  | At least 3 mL needed for extraction blank |
| DNA Quantification Assay Kit | Qubit™ dsDNA Quantification Assay Kit (High Sensitivity)  | ThermoFisher Scientific | As needed |  |

- Description: E.g., "filter".
- Product Name and Model: Provide the official name of the product.
- Manufacturer: Provide the name of the manufacturer of the product.
- Quantity: Provide quantities necessary for one application of the standard operating procedure (e.g., number of filters).
- Remark: For example, some of the consumable may need to be sterilized, some commercial solution may need to be diluted or shielded from light during the operating procedure.

## STANDARD OPERATING PROCEDURE

Methodological Notes:
- Perform all steps (besides the centrifugations) in the fume hood or PCR workstation with UV light in the Pre-PCR lab.
- Wear nitrile gloves at all steps. Wipe down hands with DNAaway and 70% ethanol frequently.
- Prior to starting work, wipe the work surface with a Hype-Wipe (contains bleach) and allow it to air dry. Next, wipe the surface with dilute ethanol (70%). Lastly, run the UV lamp in the hood or workstation for 15 minutes.
- Wipe pipettes with a DNAaway or a Hype-Wipe, followed by a wipe with a Kim-wipe or paper towel moistened with dilute ethanol. Place the pipettes in the fume hood prior to running the UV light.
- Use only pipette filter tips.
- Chill isopropanol and ethanol on ice prior to using.
- Allow PCI solution (Autogen Buffer R3) to equilibrate to room temperature for at least 30 min before using.

### Preparation

1. Decontaminate and disinfect the work area by wiping down the work surface with 10% bleach or a Hypewipe followed by 70% ethanol.
	a. Pipettes should be wiped down with DNAaway, followed by 70% ethanol, by 15 minutes of exposure to UV in a fume hood or cabinet to remove potential sources of contamination.
2. Remove 5 mL eDNA preservation tubes containing 0.45 micron nitrocellulose filters and Longmire’s lysis buffer (2-3 ml) from the -80 freezer. Thaw to room temperature.
	a. An extraction negative control (or extraction blank) can be made at this time by filling an autoclave-sterilized 5ml Lo-Bind tube with 2 ml freshly-prepared Longmire's buffer.
3. Wipe tubes down with a Kimwipe moistened with DNAaway or a Hypewipe, followed by a moistened Kimwipe with 70% ethanol. Ensure that sample labels remain visible.
4. Using sterile, filtered pipette tips, Add 150 µL of Proteinase K to each 5 ml tube to a final concentration of ~1mg/ml to each sample. Invert tube 5 times to mix. Ensure the filter remains immersed in the lysis buffer.
5. Turn on the VorTemp incubator and set it to 56°C with a 50 RPM agitation speed. Incubate the samples at 56°C overnight (20-24 hours) with agitation in the VorTemp. Record the length of the incubation period.

### Extraction

6. After the overnight incubation, remove the samples from the VorTemp and shake vigorously by hand 5 times.
7. Spin down the samples briefly at 13,300 g in the chilled centrifuge set to 4°C.
8. Recover 2.5 ml of the digestion mixture (without the filter) and transfer to a second labeled 5 mL sterile LoBind tube.
	a. Optional: Reserve 0.5-1 ml (depending on starting volume) of digestion lysate and filter for a Smithsonian biorepository archive voucher. Refrigerate at 4°C until ready.
9. Add 2.5 ml of PCI (Buffer R3) to the digestion mixture.
10. Invert five times to mix thoroughly.
11. Spin at 13,300 g for 5 min in a chilled centrifuge set to 4°C.
12. Transfer 4 mL of the aqueous layer into two separate 5.0 mL LoBind tubes (2 mL each) for isopropanol precipitation.
13. Add 1.2 mL (0.6X) of chilled 100% isopropanol to each tube of recovered aqueous layer and invert to mix.
14. Incubate in the fridge at 4°C for at least 2 hours.
15. Spin isopropanol precipitation at 13,300 g for 30 min in a chilled centrifuge set to 4°C.
16. Carefully decant isopropanol.
17. Add 1,000 µL chilled 70% EtOH.
18. Spin at 13,300 g for 5 min in a chilled centrifuge set to 4°C.
19. Carefully decant oY most of the ethanol.
20. Repeat step 18 for a second ethanol wash.
21. Briefly spin down the tubes to collect the sample at the bottom of the tube.
22. Carefully pipette oY any remaining ethanol without disturbing the pellet (Caution: pellet may not be visible).
23. Allow the pellet to air dry in the hood for 30 minutes.
24. Resuspend the DNA in 25 µL of Autogen Resuspension buffer (R9).
25. Spin the samples and allow the DNA to rehydrate at room temperature for ~1 hour or overnight at 4°C in the fridge.
26. Combine the 25 µL volumes into a single 50 µL extract in a new 1.5 mL Eppendorf Lo-Bind tube labeled with the sample number, date, and your initials.
27. Optional: Aliquot a working volume of 10-20 µL for Qubit quantification (use 2 µL) and follow-on PCR into the second labeled 1.5 mL Eppendorf Lo-Bind tube.

### Quality Control

Quantification of eDNA in extract

This protocol follows the manufacturer's recommended protocol for the Qubit dsDNA HS Quantification Assay.
28. In two Qubit assay tubes make up standard solutions, Standard #1 and Standard #2, with 190 uL of buffer with 10uL of each standard.
29. In each Quibit assay tube for sample quantification add 198 uL of Qubit buffer and 2 uL of each sample to be measured.
30. Seal and vortex assay tubes for several seconds. Assays should be stable for 2 hours.
31. Follow directions on the Quibit fluorometer for DNA quantification using the dsDNA and appropriate kit type.
32. Record DNA concentration data for each sample [ng/uL]

NMNH Biorepository archiving:
33. Sterilize a pair of forceps using DNAaway followed by dilute ethanol (70%). Dry under a UV lamp for at least 15 minutes or until ready to use. Re-sterilize forceps as necessary between samples.
34. Using sterile forceps remove the filter from the 5.0 mL LoBind sample tube and transfer to a Simport cryovial.
35. Transfer the remaining lysate using a P1000 pipette. If necessary, spin down the tube to concentrate lysate to the bottom of the tube.
36. Assigned a biorepository number to each sample and aYix the corresponding barcode sticker, recording it in
37. Store cryovials at -80°C until transfer to the Biorepository at MSC.

### Basic Troubleshooting Guide

Nothing noted here yet.

## REFERENCES

Everett, M. V., & Park, L. K. (2018). Exploring deep-water coral communities using environmental DNA. Deep Sea Research Part II: Topical Studies in Oceanography, 150, 229-241. <http://dx.doi.org/10.1016/j.dsr2.2017.09.008>

## APPENDIX A: DATASHEETS

Not applicable in this version.
