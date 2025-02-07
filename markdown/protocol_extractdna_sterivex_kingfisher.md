---
# MIOP terms
methodology_category: sample extraction and purification
project: NOAA Atlantic Oceanographic and Meteorological Laboratory 'Omics Lab Protocols
purpose: biodiversity assessment objective [OBI:0001969]
analyses: DNA extraction [OBI:0000257]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853]
broad_scale_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149]
target: deoxyribonucleic acid (DNA) [NCIT:C449]
creator: Luke Thompson, Sean Anderson
materials_required: vortexer [OBI:0400118], centrifuge [OBI:0400106], DNA extraction/purification instrument [OBI:0001117], multichannel electronic pipette [OBI:0001083] (optional)
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: 300
personnel_required: 1
language: en
issued: 2024-06-26
audience: scientists
publisher: NOAA's Atlantic Oceanographic and Meteorological Laboratory
hasVersion: 1
license: CC0 1.0 Universal
maturity level: mature

# FAIRe terms
samp_vol_we_dna_ext: 1
samp_vol_we_dna_ext_unit: mL
nucl_acid_ext_lysis: physical
nucl_acid_ext_sep: centrifugation
nucl_acid_ext: https://files.zymoresearch.com/protocols/_d4302_d4306_d4308_zymobiomics-96_magbead_dna_kit.pdf
nucl_acid_ext_kit: ZymoBIOMICS 96 Magbead DNA Kit
nucl_acid_ext_modify: Sterivex was lysed with 1000 uL of ZymoBIOMICS Lysis Solution, use of KingFisher Flex Purification System for bead cleanup and final elution
dna_cleanup_0_1: 1.0
dna_cleanup_method: ZymoBIOMICS 96 Magbead DNA Kit
concentration: not applicable
concentration_method: VarioSkan Microplate Reader, Quant-iT dsDNA Assay Kit High Sensitivity
ratioOfAbsorbance260_280: not applicable
pool_dna_num: not applicable
nucl_acid_ext_method_additional: not applicable
---

# NOAA/AOML DNA Extraction Protocol for Sterivex using KingFisher

## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

- MIOP terms are listed in the YAML frontmatter of this page.
- See <https://github.com/BeBOP-OBON/miop/blob/main/model/schema/terms.yaml> for list and definitions.

### Making eDNA FAIR (FAIRe)

- FAIRe terms are listed in the YAML frontmatter of this page.
- See <https://fair-edna.github.io/download.html> for the FAIRe checklist and more information.
- See <https://fair-edna.github.io/guidelines.html#missing-values> for guidelines on missing values that can be used for missing FAIRe or MIOP terms.

### Authors

- All authors known to have contributed to the preparation of this protocol, including those who filled in the template.
- Visit https://orcid.org/ to register for an ORCID.
- Date is the date the author first worked on the protocol.

| PREPARED BY | AFFILIATION | ORCID | DATE |
| ------------- | ------------- | ------------- | ------------- |
| Luke Thompson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0002-3911-1280> | 2021-09-13 |
| Sean Anderson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0003-3096-1120> | 2021-09-13 |
| Sammy Harding | NOAA/AOML, MSU/NGI | <https://orcid.org/0009-0008-8885-6140> | 2024-06-26 |

### Related Protocols

- This section contains protocols that should be known to users of this protocol.
- Internal Protocols: Derivative or altered protocols, or other protocols in this workflow.
- External Protocols: Protcols from manufacturers or other groups. 
- Include the link to each protocol.
- Include the version number (internal) or access date (external) of the protocol when it was accessed.
- 
#### Internal Protocols

| PROTOCOL NAME | LINK | VERSION | RELEASE DATE |
| ------------- | ------------ | ------------ | ---------- |
| NOAA/AOML Water Sampling Protocol using Sterivex with Zirconia Beads  | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_sampling_sterivex_beads.md> | 1.2.0 | 2025-01-08 |
| NOAA/AOML PCR Protocol 12S rRNA V5-V6 (MiFish) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu12sv5v6_mifish.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 16S rRNA V4-V5 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu16sv4v5_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 18S rRNA V9 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu18sv9_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML Metagenome Library Prep Protocol (Illumina DNA Prep) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_libprep_metag_illumina.md> | 1.1.0 | 2024-11-16 |

#### External Protocols

| PROTOCOL NAME | LINK | ISSUER / AUTHOR | ACCESS DATE |
| ------------ | ------------ | ------------ | ---------- |
| ZymoBIOMICS Manual 96 MagBead DNA Kit | https://files.zymoresearch.com/protocols/_d4302_d4306_d4308_zymobiomics-96_magbead_dna_kit.pdf | ZymoBIOMICS | 2025-02-05 |

### Protocol Revision Record

- Version numbers start at 1.0.0 when the protocol is first completed and will increase when changes that impact the outcome of the procedure are made (patches: 1.0.1; minor changes: 1.1.0; major changes: 2.0.0).
- Release date is the date when a given protocol version was finalised.
- Description of revisions includes a brief description of what was changed relative to the previous version.

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2024-06-26 | Initial release |
| 1.1.0 | 2024-11-16 | Addition of FAIR eDNA terms in YAML frontmatter |

### Acronyms and Abbreviations

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| NOAA | National Oceanic and Atmospheric Administration |
| AOML | Atlantic Oceanographic and Meteorological Laboratory |
| MSU | Mississippi State University |
| NGI | Northern Gulf Institute |
| eDNA | environmental DNA |
| PPE | Personal protective equipment |
| PCR | Polymerase chain reaction |
| EtOH | Ethanol |
| NTC | No template control |

### Glossary

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| Extraction Blank | A type of negative control to confirm there is no contamination during DNA extractions. Normally an empty filter extracted and PCR amplified alongside other samples. |
| No Template Control | A type of negative control during PCR to confirm there is no contamination during the PCR process. Normally nuclease-free water run in place of DNA on a PCR. |

## BACKGROUND

### Summary

This protocol is used for [DNA extraction](analyses) of [sea water](environmental_medium) eDNA samples from Sterivex filters using contents of a [ZymoBIOMICS 96 Magbead DNA Kit](nucl_acid_ext_kit) and a KingFisher Flex robot. Optional use of Opentrons OT-2 Robot to prepare plates for KingFisher. This protocol is used by the Molecular and Computational Biodiversity group of [NOAA's Atlantic Oceanographic and Meteorological Laboratory](publisher).

### Method description and rationale

This protocol is optimized for high throughput DNA extractions of Sterivex filters. It is easily reproducible and generates sufficient DNA yields while minimizing contamination and time requirements through the use of a KingFisher and optional use of an Opentrons OT-2 Pipetting Robot.

### Spatial coverage and environment(s) of relevance

This protocol has been used to extract DNA from thousands of [sea water](environmental_medium) eDNA samples taken from stations off of South Florida coasts (Atlantic Ocean and Gulf of Mexico). Sample collection depths range from 1m to 200m in the epipelagic zone (marine photic zone [ENVO:00000209]).

## PERSONNEL REQUIRED

One person with molecular biology experience.

### Safety

MagBinding Buffer from the [ZymoBIOMICS 96 Magbead DNA Kit](nucl_acid_ext_kit) is classified as category 4 for acute toxicity and causes severe skin burns and serious eye damage. It is also noted that the MagBinding Buffer is harmful to aquatic life with long lasting effects. MagWash 1 from the [ZymoBIOMICS 96 Magbead DNA Kit](nucl_acid_ext_kit) is classified as category 4 for acute toxicity, is highly flammable, causes skin and serious eye irritation and may cause drowsiness or dizziness. MagWash2 from the [ZymoBIOMICS 96 Magbead DNA Kit](nucl_acid_ext_kit) is flammable, causes serious eye irritation and may cause drowsiness or dizziness. Additional details available on SDS (<https://files.zymoresearch.com/sds/_d4302_d4308_zymobiomics-96_magbead_dna_kits.pdf>). For other reagents, standard precautions for handling chemicals including wearing PPE is recommended to avoid skin and eye exposure.

### Training requirements

Basic molecular biology training (including sterile technique, pipetting) is required to conduct this protocol.

### Time needed to execute the procedure

Extracting DNA from 94 Sterivex samples takes about 5 hours ([300](time_required) minutes) including KingFisher run time.

## EQUIPMENT

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| **Durable equipment** |
| Vortex | Vortex Genie | Scientific Industries | as many as possible | # of vortexes will affect run time of protocol |
| Vortex Adapter Plate | Vortex Adapter for 6 x 5ml tubes| QIAGEN | depends on # of vortexes | # of vortex adapter plates will affect run time |
| Centrifuge | Centrifuge 5425 R - Microcentrifuge | Eppendorf | 1 | Can be substituted with generic |
| Opentrons OT-2 Robot | OT-2 Pipetting Robot | Opentrons | 1 | Optional equipment for protocol; 8-Channel pipette recommended |
| KingFisher | KingFisher Flex Purification System | ThermoFisher | 1 | |
| 100-1000 uL Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 10-100 uL 8 Channel Pipette | Eppendorf Research Plus 8 Channel Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 1 uL-10 mL Repeater Pipette | Repeater M4 Pipette, 1 uL-10 mL Dispensing Volume for use with Combitips Advanced Syringe Tips | Can be substituted with any accurate pipette, optional for filling KingFisher plates |
| Tube Racks | 2 mL tube 96-well tube racks | Generic | 1 | Can be any brand, must fit 2 mL tubes |
| Wash bottles | Safety wash bottles 500 mL for EtOH | Generic | 1 | Can be substituted with generic |
| **Consumable equipment** |
| Sterivex Filter | Millipore Sterivex-GP Pressure Filter Unit, 0.22µm pore size | Millipore Sigma | 94 | |
| DNA/RNA Shield | Zymo DNA/RNA Shield | Zymo Research | 94 | (mL) only required if Sterivex are not pre-loaded or for adding an extraction blank |
| Zirconia Beads | Zymo ZR BashingBead Lysis Tubes (0.1 & 0.5 mm) | Zymo Research | 94 | only required if Sterivex are not pre-loaded or for adding an extraction blank |
| Filter Cap (Male) | MasterFlex Male Luer Lock Plug | VWR | 94 | Can be substituted with generic |
| Filter Cap (Female) | MasterFlex Female Luer Thread Style Cap | VWR | 94 | Can be substituted with generic |
| Parafilm | Parafilm M Lab Film | Generic | 1 | (roll) Can substitute with generic brand |
| Syringes | BD Disposable Syringes with Luer-Lock Tips, 5 mL | Fisher Scientific | 94 | Can be substituted with generic as long as they twist onto Sterivex |
| Microcentrifuge Tubes | NEST 2.0 mL Microcentrifuge Tube | Opentrons | 94 | Can be substituted with generic|
| KingFisher 96 deep-well plate | KingFisher Plastics for 96 deep-well format | ThermoFisher | 7 | |
| Kingfisher 96 well microplate (200uL) | KingFisher Plastics for 96 standard and PCR formats | ThermoFisher | 1 | |
| KingFisher 96 tip comb for deep-well magnets | Kingfisher Flex 96 Deep-Well Tip Combs | ThermoFisher | 1 | |
| 96-well PCR plate | Armadillo PCR Plate, 96-well, clear, clear wells | ThermoFisher | 3 | |
| Aluminum Foil Sealing Tape | AlumaSeal II Sealing Foils for PCR and Cold Storage | VWR | 3 | Can be substituted with generic |
| 1000µL Filter Tips | OT-2 Filter Tips, 1000µL | Opentrons | 2 | (boxes) Can be substituted with generic |
| 200µL Filter Tips | OT-2 Filter Tips, 200µL | Opentrons | 1 | (box) Can be substituted with generic |
| 2.5 mL Combitips | Combitips advanced, 2.5 mL, green, colorless tips | Eppendorf | 1 | (tip) Optional for MagBinding Beads with repeater pipette |
| 10 mL Combitips | Combitips advanced, 10 mL, orange, colorless tips | Eppendorf | 3 | (tips) Optional for KF plate prep with repeater pipette |
| Gloves | Nitrile Gloves, Exam Grade, Powder-free | ULINE | 1 | (box) Can be substituted with generic |
| Kim Wipes | KimWipe Delicate Task Wipers | KimTech | 1 | (box) Can be substituted with generic |
| **Opentrons Consumables** |
| 12-Well Reservoir, 15 mL | NEST 12-Well Reservoir, 15 mL | Opentrons | 1 | optional for KF plate prep on OT-2 Robot |
| Deep Single-Well Reservoir, 300 mL | Nalgene Disposable Polypropylene Robotic Reservoirs | ThermoFisher | 2 | optional for KF plate prep on OT-2 Robot |
| 200µL Filter Tips | OT-2 Filter Tips, 200µL | Opentrons | 1 | (box) Optional for KF plate prep on OT-2 Robot |
| **Chemicals** |
| 70% EtOH | Molecular bio grade ethanol | Generic | 1 | (Wash Bottle) only used for cleaning lab surfaces |
| **ZymoBIOMICS 96 MagBead DNA Kit** |
| Lysis Solution | ZymoBIOMICS Lysis Solution | Zymo Research | 94 mL | (mL) Can be used in place of DNA/RNA Shield, only required if Sterivex are not pre-loaded or for adding an extraction blank |
| MagBinding Buffer | ZymoBIOMICS MagBinding Buffer | Zymo Research | 57.6 | (mL) |
| MagBinding Beads | ZymoBIOMICS MagBinding Beads | Zymo Research | 2.4 | (mL) |
| MagWash 1 | ZymoBIOMICS MagWash 1 | Zymo Research | 48 | (mL) |
| MagWash 2 | ZymoBIOMICS MagWash 2 | Zymo Research | 86.4 | (mL) |
| DNAse/RNAse Free Water | ZymoBIOMICS DNAse/RNAse Free Water | Zymo Research | 14.4 | (mL) |

- Opentrons Consumables: If using Opentrons OT-2 Robot for KF Plate Prep.

- Description: E.g., "filter".
- Product Name and Model: Provide the official name of the product.
- Manufacturer: Provide the name of the manufacturer of the product.
- Quantity: Provide quantities necessary for one application of the standard operating procedure (e.g., number of filters).
- Remark: For example, some of the consumable may need to be sterilized, some commercial solution may need to be diluted or shielded from light during the operating procedure.


## STANDARD OPERATING PROCEDURE

### DNA extraction Protocol

#### Preparation

1. Sterilize all workspaces and durable equipment with 70% EtOH.
2. Label 94 2-ml microcentrifuge tubes 1 through 94 and place in 96-well tube rack.
3. Fill large ice bin with ice.

#### Extraction

1. Remove Sterivex from freezer and immediately place on ice while randomizing the order of the filters. 
2. If Sterivex are wrapped in aluminum foil, remove foil and ensure all Sterivex have filter caps on either end (male and female).
3. If Sterivex do not already contain zirconia beads and DNA/RNA Shield, add as follows:

   - Remove the male luer plug from the inlet port.
   - Remove any liquid from the inlet port using a sterile swab or twisted piece of KimWipe.
   - Pour beads from ZR BashingBead Lysis Tubes (0.1 & 0.5 mm) into the inlet port. If water has been removed, this should be easily done. If beads get stuck, use a pipette tip to unclog them.
   - Add 1 mL ZymoBiomics Lysis Buffer or 1:10 dilution of DNA/RNA Shield to the Sterivex using a pipette.
   - Replace the male luer plug in the inlet port.

4. Number the filters sequentially and use scanner to scan QR codes (cryo-babies labels) onto a google sheet or other form of processing log. If Sterivex do not have QR codes, record the numbers with their corresponding sample names in a google sheet or lab notebook.
5. Vortex for 40 minutes via Vortex Genie at speed ~6. Make sure the proper adjustable head is secured, which has brackets that fit the Sterivex filters. If brackets are loose and Sterivex are falling out, wrap a small portion of parafilm around the outside of the Sterivex and secure in bracket.
6. While vortexes are running, prepare KingFisher plates by hand using a repeater pipette:

   - Sample Plates (3): Add 600 µl of MagBinding Buffer and 25 µl of MagBinding beads to each well.
   - Wash 1: Add 500 µl of ZymoBiomics MagWash 1 to each well.
   - Wash 2-1: Add 900 µl of ZymoBiomics MagWash 2 to each well.
   - Wash 2-2: Add 900 µl of ZymoBiomics MagWash 2 to each well.
   - Elution: Add 150 µl of ZymoBiomics RNAse Free Water to each well.

OR

(OPTIONAL) Prepare KingFisher plates with Opentrons OT-2 Pipetting Robot:

   - Turn on OT-2 Robot and computer, open Opentrons program and begin protocol setup.
   - Place 200 uL filter tips in correct slot of deck.
   - Carefully fill 12-well reservoir with reagents:
     - Fill the first two columns 1/2 way full with DNA/RNAse Free Water.
     - Fill columns five, six, seven and eight completely with MagWash 1.
     - Place reservoir in correct deck slot of Opentrons. 
   - Place a deep single-well reservoir in the MagBinding deck slot and carefully fill completely with MagBinding Buffer.
   - Place a deep single-well reservoir in the MagWash 2 deck slot and carefully fill completely with MagWash 2.
   - Place sample plates (3), wash plates (3), and elution plate in respective deck slots.
   - Confirm all plates are correctly placed in deck slots and begin the run.
   - Once the run is complete, use a repeater pipette to add 25 uL of Magbinding Beads to each well of the 3 sample plates. Make sure to shake or vortex the MagBinding Beads before pipetting to resuspend the beads.

7. After 40 minutes of vortexing, expel lysate from Sterivex filters as follows:

   - Remove the male filter cap and insert a 3-ml syringe into the inlet port (syringe should twist and fit tight).
   - Gently expel the lysate into the syringe. Some bead carry-over is common.
   - Transfer lysate to a labeled and sterile 2-ml microcentrifuge tube (liquid and beads will reach ~0.75 ml mark ideally).

8. Centrifuge tubes at ≥ 10,000 x g for 1 min to pellet the beads and leave the sample as supernatant.
9. Gently pipette 250 uL of sample supernatant into respective well of KingFisher Sample Plate 1, Sample Plate 2 and 3. Repeat for each sample. If there is less than 750 uL of sample lysate in a microcentrifuge tube, attempt to pipette even amounts into each of the 3 sample plates.
10. Turn on the KingFisher instrument and computer and open up the BindIt software for KingFisher.
11. Choose correct protocol for a 3-plate run.
12. Press start and save a new run file (you can create a new file or save over a previous file that used the same protocol).
13. Follow along with instructions on the KingFisher screen to load the appropriate plates onto the KingFisher carousel and ensure all plates are in the correct position. Once the last plate has been added, the run will begin.
14. Run will last ~1hr 15min for a 3-plate protocol.
15. Once the run is complete, discard the wash, sample and tip plates. DO NOT THROW OUT ELUTION PLATE.
16. Transfer samples in Elution plate (~150 uL per well) to a permanent 96-well PCR plate for long term storage of DNA at –20 to –80 °C.

   - Specific to NOAA/AOML: Transfer 50 uL of sample to a 96-well PCR plate labeled "Working Stock", another 50 uL of sample to a 96-well plate labeled "Archive 1", and the remainder 50 uL of sample to a third 96-well plate labeled "Archive 2". (see quality control for more information)

17. Turn off KingFisher instrument and computer.

### Quality control

- An extraction blank (negative control) is included in every extraction set (93 samples + 1 extraction blank). All samples and controls are then quantified to confirm DNA concentration. Samples are also PCR amplified with a NTC and positive controls (Zymo Mock Community).
- Specific to NOAA/AOML: Extracted samples are transferred into 3 aliquots stored at -20°C: a working stock for use in lab (~50 uL), Archive 1 (~50 uL), and Archive 2 (~50 uL). 

### Basic troubleshooting guide

- Issue 1: There have been issues with cracks in the ring around the inlet ports of Sterivex (usually only one side) and leaks occurring after thawing.
   - Solution: To make the Sterivex usable, wipe off excess leakage/condensation on the outside of the Sterivex using a KimWipe and firmly press putty into the concave ring surrounding the inlet ports of the Sterivex. Then use parafilm to tightly wrap the areas where putty was applied. 
- Issue 2: Depending on the type of bracket used on Vortex Genies, Sterivex may fall out of the brackets as soon as vortexes are turned on.
   - Solution: Use a KimWipe to wipe off excess condensation on the Sterivex then wrap a small strip of parafilm around the outside of the Sterivex and clip back into the bracket.
- Issue 3: (Opentrons OT-2 Robot) Occasionally the Opentrons OT-2 Robot will have an issue with dispensing liquid because of bubbling occurring inside the tips dispensing MagBinding buffer due to the "soapy" nature of the solution. 
   - Solution: Press the "Pause" button on the computer and replace the bubbly tip manually with gloved hands. Then unpause the run and watch to see if the tip correctly dispenses MagBinding buffer. If a sample plate has empty wells, use a pipette to manually add MagBinding buffer after the plate comes off the Opentrons.

## REFERENCES
Not applicable.

## APPENDIX A: DATASHEETS
Not applicable.
