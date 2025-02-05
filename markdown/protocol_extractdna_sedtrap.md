---
# MIOP terms
methodology_category: sample extraction and purification
project: NOAA Atlantic Oceanographic and Meteorological Laboratory 'Omics Lab Protocols
purpose: biodiversity assessment objective [OBI:0001969]
analyses: DNA extraction [OBI:0000257]
geographic_location: Gulf of Mexico [GAZ:00002853]
broad_scale_environmental_context: marine biome [ENVO:00000447], marine aphotic zone (ENVO:00000210)
local_environmental_context: marine biome [ENVO:00000447], marine aphotic zone (ENVO:00000210)
environmental_medium: marine mud (ENVO:00005795)
target: deoxyribonucleic acid (DNA) [NCIT:C449]
creator: Shiozaki et al. (2021), Santoro lab (UC Santa Barbara), Emily Osborne 
materials_required: water bath [OBI:0400155], vortexer [OBI:0400118], centrifuge [OBI:0400106], 
time_required: 300
personnel_required: 1
language: en
issued: January 2024
audience: scientists
publisher: NOAA's Atlantic Oceanographic and Meteorological Laboratory

# FAIRe terms
samp_vol_we_dna_ext: .250
samp_vol_we_dna_ext_unit: g
nucl_acid_ext_lysis: physical
nucl_acid_ext_sep: magnetic beads
nucl_acid_ext: https://www.qiagen.com/us/resources/resourcedetail?id=3d576814-4f1e-4e26-9c94-57d5dc2bb60a&lang=en
nucl_acid_ext_kit: Qiagen PowerSoil Pro Kit
nucl_acid_ext_modify: Added 100 uL of solution C6
dna_cleanup_0_1: 1.0
dna_cleanup_method: NEBNext FFPE DNA Repair Kit
concentration: not applicable
concentration_method: VarioSkan Microplate Reader, Quant-iT dsDNA Assay Kit High Sensitivity
ratioOfAbsorbance260_280: not applicable
pool_dna_num: not applicable
nucl_acid_ext_method_additional: not applicable
---

# AOML Protocol for Extracting Sediment Trap Samples from Formalin Solution

PROTOCOL INFORMATION

## Minimum Information about an Omics Protocol (MIOP)

See https://github.com/BeBOP-OBON/miop/blob/main/model/schema/terms.yaml for list and definitions.


## AUTHORS

| PREPARED BY | AFFILIATION | ORCID (visit https://orcid.org/ to register) | DATE |
| ------------- | ------------- | ------------- | ------------- |
| Shiozaki et al. | NA  | NA | 2021 |
| Santoro lab | UC Santa Barbara  | NA | NA |
| Emily Osborne | NOAA AOML | 0000-0001-9579-5851 | 2024-01
| Gabriella Lirio | NOAA AOML, CIMAS | NA | 2025-01-29

## PROTOCOL REVISION RECORD

Version numbers start at "1.0.0" when the protocol is first completed and will increase when changes that impact the outcome of the procedure are made (patches: 1.0.1; minor changes: 1.1.0; major changes: 2.0.0). Please store all versions in the gDrive folder designated to your institute.

| VERSION  | RELEASE DATE | DESCRIPTION OF REVISIONS | 
| ------------- | ------------- | ------------- |
| 1.0.0  | 2025-01-29  | Initial release  |

## ACRONYMS AND ABBREVIATIONS

| ACRONYM / ABBREVIATION | DEFINITION |
| ------------- | ------------- |
| NOAA | National Oceanic and Atmospheric Administration |
| AOML | Atlantic Oceanographic and Meteorological Laboratory |
| CIMAS | Cooperative Institute for Marine and Atmospheric Studies |
| eDNA | environmental DNA |
| PPE | Personal protective equipment |
| PCR | Polymerase chain reaction |
| EtOH | Ethanol |
| NTC | No template control |


## GLOSSARY

| SPECIALISED TERM | DEFINITION |
| ------------- | ------------- |
| Extraction blank | A type of negative control to confirm there is no contamination during DNA extractions. Normally an empty filter extracted and PCR amplified alongside other samples. |
| No template control | A type of negative control during PCR to confirm there is no contamination during the PCR process. Normally nuclease-free water run in place of DNA on a PCR. |

# BACKGROUND

## Summary

This protocol is used for {{analyses}} of {{environmental_medium}} eDNA samples from sediment-trap collected samples using contents of a {{nucl_acid_ext_kit}}. This protocol is used by the Ocean Biogeochemistry and Molecular and Computational Biodiverstiy groups of {{publisher}}. 

## Method description and rationale

This protocol was adapted from Shiozaki et al. (2021) and colleagues from the Santoro lab (UC Santa Barbara) to optimize eDNA extraction from sediment samples.

## Spatial coverage and environment(s) of relevance

This protocol has been used to extract DNA from thousands of {{environmental_medium}} eDNA samples taken from the Northern Gulf of Mexico. Sample depths of 550m in the marine aphotic zone (ENVO:00000210).

# PERSONNEL REQUIRED

One person with molecular biology experience.

## Safety

Borate-NaOH is classified as category 5 acute oral toxicity and should not be swallowed. SDS solution has category 2 acute aquatic toxicity and category 3 chronic aquatic toxicity. It may cause serious eye damage, harmful if swallowed or inhaled, and may cause skin irritation. Proteinase K is classified as category 2 for skin corrosion/irritation and serious eye damage/eye irritation, category 1 for respiratory sensitization, and cateogry 3 for specific target organ toxicity (single exposure). A mixture within the AMpure XP beads is classified as category 2 acute toxicity. Ethanol is categorized as a category 2 flammable liquid and for serious eye damage/eye irritation. For all reagents, standard precautions for handling chemicals including wearing PPE is recommended to avoid skin and eye exposure.

## Training requirements

Basic molecular biology training (including sterile technique, pipetting) is required to conduct this protocol.

## Time needed to execute the procedure

Extracting DNA from 21-cup sediment trap samples (64 triplicates + 3 blanks) is suggested to be completed over 2-3 days.

# EQUIPMENT

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| Durable equipment |
| Vortex | Vortex Genie | Scientific Industries | as many as possible | # of vortexed will affect run time of protocol |
| Water bath | Content Cell | Content Cell | Content Cell | Content Cell |
| Microcentrifuge| Centrifuge 5425 R - Microcentrifuge | Eppendorf | 1 | Can be substituted with generic |
| Magnetic stand for DNA repair | MagRack 6 | Cytiva | 8 | # of magnetic stands will impact run time |
| 100-1000 uL Pipette | Eppendorf Research Plus Adjustable-Volume Pipette| Eppendorf | 1 | Can be substituted with any accurate pipette |
| 10-100 uL 8 Channel Pipette | Eppendorf Research Plus 8 Channel Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 1 uL-10 mL Repeater Pipette | Repeater M4 Pipette, 1 uL-10 mL Dispensing Volume for use with Combitips Advanced Syringe Tips| Eppendorf | 1 | Can be substituted with any accurate pipette, optional |
| Tube Racks | 2 mL tube 96-well tube racks | Generic | 1 | Can be any brand, must fit 2 mL tubes |
| Wash bottles | Safety wash bottles 500 mL for EtOH | Generic |  |  |
| Metal spatula | Eisco Stainless Steel Laboratory Spatula with Scoop | Eisco | 1 | Can be substitued with generic |
| Consumable equipment |
| 50 mL falcon tubes| Nunc 50 mL Bioreactor Tube | Thermo Scientific | 21 | Can be substituted with generic |
| 1000 uL tips | OT-2 Filter Tips, 1000 uL | Opentrons | 6 boxes | Can be substituted with generic |
| 200 uL tips | OT-2 Filter Tips, 200µL | opentrons | 7 boxes | Can be substituted with generic |
| 10 uL tips | 10 µL XL graduated | TipOne | 1 box | Can be substituted with generic |
| 5 mL Combitips | Combitips advanced, 5.0 mL, blue, colorless tips | Eppendorf | 1 box | optional for MagBinding Beads with repeater pipette | 
| Aluminum Foil Sealing Tape | AlumaSeal II Sealing Foils for PCR and Cold Storage | VWR | 1 | Can be substituted with generic |
| 96-well PCR plate| Armadillo PCR Plate, 96-well, clear, clear wells | ThermoFisher | 1 | |
| Parafilm | Parafilm M Lab Film | Generic | 1 roll | Can be substituted with generic |
| Gloves | Nitrile Gloves, Exam Grade, Powder-free | ULINE | 1 box | Can be substituted with generic |
| Chemicals |
| NaOH pellets |  | Generic | 10 g | Used to create Borate-NaOH buffer |
| Borate powder |  | Generic | 0.7725 g | Used to create Borate-NaOH buffer |
| SDS (10%) |  | Generic | 5 mL | Used to create working solution |
| Proteinase K | | Generic | 4125 uL | |
| AMPure XP Beads | AMPure XP Bead-Based Reagent | Beckman Coulter | 12.28 mL |  |
| 80% EtOH | Molecular bio grade ethanol | Generic | 13.2 mL | Used in protocol |
| 70% EtOH | Molecular bio grade ethanol | Generic | 1 Wash Bottle | Used for cleaning lab surfaces |
| 0.1X TE | TE, pH 8.0, RNase-free | Invitrogen | 2.64 mL |  |
| Qiagen DNeasy PowerSoil Pro Kit |
| Microcentrifuge tubes | Microcentrifuge tubes ( 2 mL) | Qiagen |  | Can be substituted with generic |
| Elution tubes | Elution tubes (1.5 mL) | Qiagen | 132 | Can be substituted with generic |
| MB Spin Column | MB Spin Columns | Qiagen | 66 | Can be substituted with generic |
| Bead beating beads| PowerBead Pro Tubes | Qiagen | 66 tubes|  |
| Solution CD2 | | Qiagen | 13.2 mL |  |
| Solution CD3 |  | Qiagen | 39.6 mL |  |
| Solution EA |  | Qiagen | 33.0 mL |  |
| Solution C5 |  | Qiagen | 33.0 mL |  |
| Solution C6 |  | Qiagen | 6.6 mL |  |
| NEBNext FFPE DNA Repair |
| FFPE DNA Repair Buffer | NEBNext FFPE DNA Repair Buffer | New England Biolabs | 429 uL |  |
| FFPE DNA Repair Mix | NEBNext FFPE DNA Repair Mix | New England Biolabs | 132 uL |  |






# STANDARD OPERATING PROCEDURE

## DNA extraction Protocol


## DNA extraction

### Preparation

• Stock solution: NaOH solution = 10 g NaOH pellets + 250 mL MilliQ (MQ)(make in hood)

• Stock solution: Borate-NaOH buffer = 0.7725 g borate + 250 mL MQ
   - Add small amount of NaOH until pH, 1 mL additions = 11 (check using pH strips)

•  Working solution (50 mL centrifuge), make fresh each time
   - Borate-NaOH (45 mM), SDS (1%) = 9 mL 50-mM Borate-NaOH + 1 mL 10% SDS. Makes 10 mL, make more based on the desired number of samples (~1 mL per sample needed).
   - For a full sediment trap extraction with triplicates, ~70 mL of of working solution needed (65 mL Borate-NaOH + 5 mL 10% SDS)


### Extraction

Day 1: Separate sediments into sample vials (Shiozaki et al., 2021 and Santoro Protocol, unpublished) and begin Qiagen PowerSoil Kit

1. Centrifuge 50 mL sediment trap sample falcon tubes to concentrate/pellet the sediment (maximum speed, 4000rpm for 4 minutes – may need to do this twice if the sample does not fullt pellet)
   a. Decant off the supernatant gently.
      i. If the sediment trap sample is large, reserve supernatant in secondary centrifuge tube to add back to remaining sample falcon tube for long term storage.
   b. If there are larger organisms or shells present, remove them and make note in the sample log.
      i. Ideally, remove these large organisms/shells before centrifuging.
2. Prepare Samples in 2 mL sample tubes 
   a. Clean off all scooping tools with RNase Zap!
   b. Tare weight of 2-mL sample tube and then scoop/load sediments from 50 mL into 2-mL sample tube (provided in Qiagen kit), aiming for ~250 mg (as little as 200 mg and as much as 300)
   c. In cases of small samples, use eyedropper with Milli-Q to disturb the sample to pour into 2 mL tubes, wait to settle, then remove supernatant with dropper.
   d. Record exact sediment weight in each discrete tube
   e. Ideally, prepare samples in triplicate and use additional splits of centrifuged sediment trap samples as needed

3. Rinse samples with MilliQ
   a. If after loading, the sample vial already has high water content, centrifuge (30 seconds, 10,000 x g) and remove supernatant.
   b. Add at least two sample blanks, label two microcentrifuge tubes to sample rack 
   c. Add 1 mL MilliQ to vials, vortex for 5-10 seconds to mix, centrifuge (1 minute at 10,000 x g), and discard supernatant

4. Cell Lysis: Add reagents and bead beating beads to each sample (these reagents replace CD1 in kit)
   a. Add 980 ul of working solutiom (Borate-NaOH-SDS) 
   b. Add 62.5 ul of 800U/ml Proteinase K to achieve 50 U/ml
   c. Add the Qiagen bead beating beads (pouring beads from tube into sample tube OR move solution into the bead pro tubes)
   d. Vortex briefly (5-10 seconds) confirming that the beads and sediment pellet are mixing. If not, use a clean metal spatula to aggressively disturb sediment pellet to mix with beads. Vortex to check.
   e. Once mixed, clip onto vortexer and run at maximum speed for 10 mins. Carefully remove tubes from vortexer clips as tops can easily pop open resulting in sample loss.

5. Incubate samples in a water bath (65 °C) for 24 hours (for Isotemp bath, setting 7 on temperature control (below) = 65 deg)

Day 2: Continue extraction using Qiagen PowerSoil Kit

6. Remove vials from bath and check for cracks. If a vial is cracked, transfer all contents to a new vial.
7. Centrifuge incubated samples + beads at 15,000 x g for 1 minute
8. Transfer supernatant of samples to a clean 1.5 mL microcentrifuge tube, some sediment may be suspended in the supernatant
9. Inhibitor Removal Technology: Add 200 uL of Solution CD2 and vortex for 5s
   a. CD2 will precipitate non-DNA organic and inorganic material including humic substances, cell debris, and proteins
   b. Centrifuge at 15,000 x g for 1 min.
   c. Avoiding the pellet, transfer up to 700 uL of supernatant to a clean 2 mL microcentrifuge tube. Expect 500-600 uL.
10. Bind DNA: Add 600 uL of Solution CD3 and vortex for 5s. Incubate for 1 min.
11. Load 650 uL of the lysate onto an MB Spin Column and centrifuge at 15,000 x g for 1 min
   a. Discard the flow-through and repeat previous step to ensure that all of the lysate has passed through the MB spin column
   b. Carefully place the spin column into a clean 2 mL collection tub. Avoid splashing any flow-through onto the MB spin column.
12. Wash: Add 500 uL of Solution EA to the spin column. Centrifuge at 15,000 x g for 1 min.
   a. Discard the flow-through and place the spin column back into the same 2 mL collection tube
13. Wash: Add 500 uL of Solution C5 to the spin column. Centrifuge at 15,000 x g for 1 min
   a. Discard the flow-through and place the spin column into a new 2 mL collection tube
   b. Centrifuge at up to 16,000 x g for 2 min. Carefully place the spin column into a new 1.5 mL elution tube
14. Elute: Add 100 uL of Solution C6 to the center of the white filter membrane (don't use repeater pipette for this step)
   a. Centrifuge at 15,000 x g for 1 min. (Samples may need to be split into batches to fit elution + spin column into the centrifuge). Discard the spin column. DNA is now ready for downstream applications.
15. Aliquot DNA extract: Remaining sample stock, can store samples in 4 °C for days to weeks, -20 °C for long term weeks to months.
16. Measure extract concentrations of pre-repaired DNA.

Day 3: DNA Repair (can be combined with Day 2)

17. Mix the following components in a sterile nuclease-free tube:
   a. FFPE DNA 53.5 uL
   b. FFPE DNA Repair Buffer 6.5 uL
   c. NEBNext FFPE DNA repair mix 2 uL
      i. Total volume= 62 uL
   d. Mix by pipetting followed by a quick spin to collect all liquid from the sides of the tube.
   e. Incubate at 20 °C for 15 minutes.
18. Cleanup using AMPure XP Beads
   a. Vortex AMPure XP Beads to resuspend.
   b. Add 186 uL (or 3x the volume of the sample) of resuspended AMPure XP Beads to the repair reaction. Mix thoroughly on a vortex mixer or by pipetting up and down at least 10 times.
   c. Incubate for 5 minutes at room temperature.
19. Put the tubee on an appropriate magnetic stand to separate beads from supernatant.
   a. After the solution is clear (about 5 minutes, but can take up to 20 minutes), carefully remove and discard the supernatant. Be careful not to disturn the beads that contain the DNA targets.
20. Add 200 uL of 80% freshly prepared ethanol to the tube/PCR plate while in the magnetic stand. (20 mL ethanol needed = 16 mL concentrated ethanol + 4 mL ultra pure MQ)
   a. Incubate at room temperature for 30 seconds, and then carefully remove and discard the supernatant
   b. Repeat this step once (ethanol addition and removal)
21. Air dry beads for up to 5 minutes while the tube is on the magnetic stand with the lid open.
   a. Caution: Do not over-dry the beads. This may result in lower recovery of DNA target.
   b. Elute the samples when the beads are still dark brown and glossy looking, but when all visible liquid has evaporated. When the beads turn lighter brown and start to crack, they are too dry.
22. Remove the tube from the magnet. Elute DNA target by adding 40 uL 0.1X TE to the beads. (2 mL needed = 200 uL 1X TE + 1.8 mL ultra pure MQ)
   a. Mix well on a vortex mixer or by pipetting up and down, and incubate for 2 minutes at room temperature. Put the tube in the magnetic stand until the solution is clear.
23. Without disturbing the bead pellet, carefully transfer 32 uL of the supernatant to a fresh, sterile microfuge tube.
24. Proceed to library construction using end-user supplied reagents.
## Quality control

Run 2% agarose gel to confirm PCR products.

## Basic troubleshooting guide

Troubleshooting found within the protocol.

# REFERENCES

Protocol adapted from: Shiozaki et al. (2021)

