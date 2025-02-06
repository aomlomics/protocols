---
# MIOP terms
methodology_category: sample collection
project: NOAA Atlantic Oceanographic and Meteorological Laboratory GO-SHIP
purpose: biodiversity assessment objective [OBI:0001969]
analyses: filtration [OBI:0302885], environmental material collection process [OBI:0600012]
geographic_location: Atlantic Ocean [GAZ:00000344], Pacific Ocean [GAZ:]
broad_scale_environmental_context: oceanic epipelagic zone biome [ENVO:01000035], marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: oceanic epipelagic zone biome [ENVO:01000035], marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149]
target: environmental DNA [NCIT:C169106]
creator: Sean Anderson, Luke Thompson, Alyse Larkin, Adam Martiny
materials_required: filtration [OBI:0302885]
skills_required: sterile technique, pipetting skills, standard molecular technique, research vessel experience
time_required: 120
personnel_required: 1
language: en
issued: 2024-08-15
audience: scientists
publisher: NOAA's Atlantic Oceanographic and Meteorological Laboratory
hasVersion: 1
license: CC0 1.0 Universal
maturity level: mature

# FAIRe terms
samp_category: sample
env_broad_scale: marine biome [ENVO:00000447]
env_local_scale: marine photic zone [ENVO:00000209]
env_medium: sea water [ENVO:00002149]
habitat_natural_artificial_0_1: 0
samp_collect_method: CTD rosette
samp_collect_device: Niskin bottle
samp_size: 1000
samp_size_unit: mL
---

# NOAA/AOML Water Sampling Protocol using Sterivex with Zirconia Beads

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
| Sean Anderson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0003-3096-1120> | 2023-11-27 |
| Luke Thompson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0002-3911-1280> | 2023-11-27 |
| Sammy Harding | NOAA/AOML, MSU/NGI | <https://orcid.org/0009-0008-8885-6140> | 2024-08-15 |
| Alyse Larkin | UC-Irvine | <https://orcid.org/0000-0003-4466-0791> | 2023-11-27 |
| Adam Martiny | UC-Irvine | <https://orcid.org/0000-0003-2829-4314> | 2023-11-27 |

## RELATED PROTOCOLS

| PROTOCOL NAME | LINK  | VERSION | RELEASE DATE|
| ------------- | ------------- | ------------- | ------------- |
| NOAA/AOML DNA Extraction Protocol for Sterivex using KingFisher | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_extractdna_sterivex_kingfisher.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 12S rRNA V5-V6 (MiFish) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu12sv5v6_mifish.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 16S rRNA V4-V5 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu16sv4v5_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 18S rRNA V9 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu18sv9_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML Metagenome Library Prep Protocol (Illumina DNA Prep) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_libprep_metag_illumina.md> | 1.1.0 | 2024-11-16 |

## RELATED EXTERNAL PROTOCOLS

| PROTOCOL NAME | LINK | ISSUER / AUTHOR | ACCESS DATE |
| ------------ | ------------ | ------------ | ---------- |
| Not applicable |

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2023-11-27 | Initial release |
| 1.0.1 | 2024-10-23 | Formatting edits |
| 1.1.0 | 2024-11-16 | Addition of FAIR eDNA terms in YAML frontmatter |
| 1.2.0 | 2025-01-08 | Clarified the concentration of bleach throughout |

- Version numbers start at 1.0.0 when the protocol is first completed and will increase when changes that impact the outcome of the procedure are made (patches: 1.0.1; minor changes: 1.1.0; major changes: 2.0.0).
- Release date is the date when a given protocol version was finalised.
- Description of revisions includes a brief description of what was changed relative to the previous version.

### Acronyms and Abbreviations

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| GO-SHIP | Global Ocean Ship-based Hydrographic Investigations Program |
| NOAA | National Oceanic and Atmospheric Administration |
| AOML | Atlantic Oceanographic and Meteorological Laboratory |
| MSU | Mississippi State University |
| NGI | Northern Gulf Institute |
| eDNA | environmental DNA |

### Glossary

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| Field negative control | Negative control created during sampling. Usually distilled (DI) water run through a Sterivex filter in place of a seawater eDNA sample. This will act as a control for contamination during field sampling. |
| Niskin bottle | Plastic cylindrical bottle used for collecting water samples at different depths. Comes in a variety of volumes. |

## BACKGROUND

### Summary

This protocol describes collection and filtration of marine [environmental DNA](target) samples using Sterivex cartridge filters and can be adapted to collect water samples from individual [Niskin bottle](samp_collect_device), [CTD rosette](samp_collect_method), or flow through systems. This protocol is used by [NOAA's Atlantic Oceanographic and Meteorological Laboratory](publisher) GO-SHIP collaborators.

### Method description and rationale

This protocol is used to pump [sea water](environmental_medium) samples collected via [Niskin bottle](samp_collect_device), [CTD rosette](samp_collect_method), or flow through systems and pump it through a 0.22 uM Sterivex filter using a peristaltic pump. Sterivex filters are loaded with Zymo ZR BashingBeads prior to pumping and DNA/RNA preservative is immediately added post-pumping to better preserve [environmental DNA](target) and expedite DNA extraction upon processing in the lab. The recommended filtration volume for GO-SHIP samples is ~8 liters, which takes ~2 hours. Precautions are taken to minimize contamination of samples by thoroughly sterilizing all equipment prior to use. 

### Spatial coverage and environment(s) of relevance

This protocol can be used across any marine environment to effectively collect water samples for biodviersity monitoring. This protocol can tolerate a wide range of depths for sampling - NOAA's AOML samples from 1m up to 1000m.

## PERSONNEL REQUIRED

One person with pipetting experience. Research vessel experience is recommended but not required.

### Safety

There are no major safety concerns with this protocol. Standard precuations should be taken such as wearing PPE at all times to avoid skin and eye exposure especially when working with bleach.

### Training requirements

Standard moleculary biology training including sterile technique and pipetting technique is required to properly conduct this protocol. Research vessel experience is recommended. Personnel should be trained in filtering protocol prior to conducting on ship.

### Time needed to execute the procedure

The process of setting up sampling equipment and filtering seawater will take ~2 hours ([120](time_required) minutes) depending on number of samples.

## EQUIPMENT

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| **Durable equipment** | 
| 20 L carboy | 20 L Nalgene carboy | Generic brand | 1 | |
| 8 L carboy | 8 L Nalgene carboy | Generic brand | 1 | Used to hold bleach solution |
| Peristaltic pump | Masterflex peristaltic pump | Cole Parmer | 1 | |
| Pump heads | Masterflex L/S Easy-Load II Pump Heads for Precision Tubing | Avantor | 3 | The greater the # of pump heads, the faster the sampling process |
| Pump tubing | Masterflex Precision Pump Tubing, Peroxide-Cured Silicone | EW-96400-24 | Cole Parmer | 3 | Depends on # of pump heads |
| Hose-barb adapter | Masteflex fitting, Male Luer Lock to Hose Barb Adapter | Cole-Parmer | 3 | Depends on # of pump tubes |
| Serological pipette | 10 mL Serological Pipette | Generic brand | 3 | Depends on # of pump tubes|
| 2 L graduated cylinders | Graduated cylinder - 2 L | Generic brand | 3 | Depends on # of samples being pumped at once, can be substituted with carboys which tubing will be directly attached to (no serological pipets) using adapters |
| -20 °C freezer | -20 °C commercial chest freezer | Generic brand | 1 | |
| **Consumable equipment** |
| Sterivex filter | Millipore Sterivex-GP Pressure Filter Unit, 0.22µm pore size | Millipore Sigma | 175 | Quantity depends on number of samples desired, remember to account for negative control field blanks |
| Inlet (male) luer-lock cap | MasterFlex Male Luer Lock Plug | VWR | 175 | Depends on # of samples, one per Sterivex |
| Outlet (female) luer-lock cap | MasterFlex Female Luer Thread Style Cap | VWR | 175 | Depends on # of samples, one per Sterivex |
| Pre-printed Cryo-Babies labels | Cryo-Babies LCRY-1700 | Diversified Biotech | 175 | Depends on # of samples, one per Sterivex |
| 60 mL syringe with male luer-lock outlet | Disposable syringe with luer lock - 60 mL | Generic brand | 1 | Used for sterilizing tubing |
| Sterile collection bags | Whil-Pak collection bags | Cole Parmer | 1 box | Various sizes can be used for water collection |
| DNA/RNA Shield | Zymo DNA/RNA Shield | Zymo Research | 175 |(mL) 1mL required per Sterivex |
| Zymo ZR BashingBead Lysis Tubes | Zymo ZR BashingBead Lysis Tubes (0.1 & 0.5 mm) | Zymo Research | 175 | 1 tube per Sterivex |
| Gloves | Powder-free nitrile gloves | Generic brand | 1 | (box) Can be any generic brand of gloves |
| Field notebook | Hard cover notebook | Generic brand | 1 | Encouraged to keep a digital sample log in addition to written notes |
| **Chemicals** |
| 5-9% Sodium hypochlorite | Household bleach | Generic brand | 1 | (bottle) Dilute 1:20 for lab use |
| Deionized or Milli-Q water | DI water | Generic brand | 8 | (L) Can use ship's DI water |

- Description: E.g., "filter".
- Product Name and Model: Provide the official name of the product.
- Manufacturer: Provide the name of the manufacturer of the product.
- Quantity: Provide quantities necessary for one application of the standard operating procedure (e.g., number of filters).
- Remark: For example, some of the consumable may need to be sterilized, some commercial solution may need to be diluted or shielded from light during the operating procedure.

## STANDARD OPERATING PROCEDURE

### Protocol

### Sampling

Preparation

1. Prepare a 1:20 dilution bleach solution by mixing 1 part household bleach (5-9% sodium hypochlorite) with DI water and storing in an 8 L carboy.
2. Wearing gloves, prepare the Sterivex filters by carefully adding 1 tube of Zymo ZR BashingBeads. It is recommended to cut off the top half of a 1000 uL tip and place it into the top of the Sterivex filter to act as a funnel while pouring beads into the Sterivex. 
3. Label each Sterivex filter with a pre-printed sticker.
4. Attach hose-barb adapter to one end of peristaltic pump tubing.
5. Attach serological pipette to other end of peristaltic pump tubing.
6. Sterilize 60 mL syringe with 1:20 dilution bleach solution.

Sampling

1. Rinse 20-L carboy 2 times with ~100 mL of sample water (200 mL total)
2. Wearing gloves, collect water from the flow-through system (or Niskin bottles) into 20-L carboy.
3. Place serological pipettes into bag(s) or bottle(s), ensuring the other end of the tubing (with hose-barb) is flowing into the graduated cyclinders.
4. Turn on the pump and run ~100 mL of seawater to prime the tubing.
5. Run the pump at 100-150 rpm.
6. Pause the pump and discard water.

Filtration

1. Attach the Sterivex filter input to the hose-barb that is already attached to the tubing outflow. The filter should screw on tightly. Avoid handling Sterivex filter input or output ends.
2. Run the pump and filter seawater until ~8 L has been filtered, measured using the graduated cyclinders or another container.
3. On the log sheet, record the date, time, latitute, longitude, volume filtered and any notes about the sample. This information should be entered into an Excel spreadsheet every few days to maintain a digital copy in addition to the paper copy.
4. Pause pump and open pump head valves to release pressure.
5. Unscrew and remove Sterivex filters from the hose-barb adapters.
6. Gently remove any excess seawater from the filters using a sterilized 60 mL syringe.
7. Cap the bottom end (outlet) of the Sterivex filter with a female luer-lock cap.
8. In between filtering different water samples, rinse out the tubing with 1:20 dilution bleach solution, followed by DI water. Then proceed with the next volume of seawater.

Sample preservation

1. Using a P1000 (1000 uL pipette), gently add 1000 uL of DNA/RNA Shield preservative into the Sterivex.
2. Cap the top end (inlet) of the Sterivex with a male luer-lock cap.

Storage

1. Freeze at ≥ –20 °C until extraction.

Post-Sampling
1. Return the bottle of DNA/RNA Shield to a refrigerator to reduce contamination.
2. Run ~1 L of 5% bleach through the lines to clean pump tubing. Repeat with ~1 L of deionized water.
3. Rinse the 20 L collection carboy 3 times with ~0.5 L DI water (1.5 L total) after sampling.

### Quality control

Negative field controls are included with every research cruise. After the addition of Zymo ZR BashingBeads to a new Sterivex filter, DI water is filtered in place of sea water and then DNA/RNA Shield is added. These Sterivex are stored the same as other sample Sterivex.

### Basic troubleshooting guide

Leaks
- If there is a leak present in the pump setup, you will notice trouble pulling water through the pump system. Check all seals and re-attach tubing.

Clogged Filter
- If a filter is clogged, turn valves and connections off and attempt to clear obstructions (i.e. large chunks of sediment or algae). Make note of any abnormal conditions and try to pump the full volume of seawater through the filter. In more productive areas, especially surface samples, we would frequently have filters that could not take the full volume. Since there are only two pumps and multiple sample depths at one time, it was common for us to use a cut-off time before starting next sample (~45 min).

## REFERENCES
Not applicable.

## APPENDIX A: DATASHEETS
Not applicable.

## APPENDIX B: VIDEO & IMAGE FILES
[Filtering Video (Youtube): eDNA Sampling for Bio-GO-SHIP](https://www.youtube.com/watch?v=RjJ_bpb1z04)
