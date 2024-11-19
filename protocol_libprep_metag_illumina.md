---
# MIOP terms
methodology_category: Omics Analysis
project: NOAA Atlantic Oceanographic and Meteorological Laboratory OMICS Lab Protocols
purpose: PCR [OBI:0000415], Library Preparation [OBI:0000711]
analyses: PCR [OBI:0000415], Library Preparation [OBI:0000711]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853]
broad_scale_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
local_environmental_context: marine biome [ENVO:00000447], marine photic zone [ENVO:00000209]
environmental_medium: sea water [ENVO:00002149], polymerase chain reaction [OBI:0000415]
target: whole genome sequencing [OBI_0002117]
creator: Alyse Larkin, Eric Adams, Stephen Wandro, Julio Avelar-Barragan, Andrew Oliver, Katrine Whiteson
materials_required: vortexer [OBI:0400118], PCR instrument [OBI:0000989], Centrifuge [OBI:0400106]
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: 
personnel_required: 1
language: en
issued: 2023-05-26
audience: scientists
publisher: NOAA Atlantic Oceanographic and Meteorological Laboratory; Mississippi State University's Northern Gulf Institute

# FAIR eDNA terms
barcoding_pcr_appr: two-step pcr
library_id: 
platform: ILLUMINA
instrument: Illumina MiSeq System
seq_kit: Illumina DNA Prep Kit
lib_layout: paired end
sequencing_location: 
adapter_forward: 
adapter_reverse: 
lib_screen: 
mid_forward: 
mid_reverse: 
filename: 
filename2: 
seq_method_additional: not applicable
---

# NOAA/AOML Metagenome Library Prep Protocol (Illumina DNA Prep)

## PROTOCOL INFORMATION

### Minimum Information about an Omics Protocol (MIOP)

- MIOP terms are listed in the YAML frontmatter of this page.
- See <https://github.com/BeBOP-OBON/miop/blob/main/model/schema/terms.yaml> for list and definitions.

### Authors

| PREPARED BY | AFFILIATION | ORCID | DATE |
| ------------- | ------------- | ------------- | ------------- |
| Alyse Larkin | UCI | <https://orcid.org/0000-0003-4466-0791> | 2023-05-26
| Eric Adams et al. | UCI | | 2020-10-21 |
| Luke Thompson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0002-3911-1280> | 2024-09-05 |
| Sammy Harding | NOAA/AOML, MSU/NGI | <https://orcid.org/0009-0008-8885-6140> | 2024-09-05 |

- All authors known to have contributed to the preparation of this protocol should be listed, including those who filled in the template.
- Visit <https://orcid.org/> to register for an ORCID.

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2024-09-05 | Initial release |
| 1.0.1 | 2024-10-23 | Formatting edits |
| 1.1.0 | 2024-11-16 | Addition of FAIR eDNA terms in YAML frontmatter |

- Version numbers start at 1.0.0 when the protocol is first completed and will increase when changes that impact the outcome of the procedure are made (patches: 1.0.1; minor changes: 1.1.0; major changes: 2.0.0).
- Release date is the date when a given protocol version was finalised.
- Description of revisions includes a brief description of what was changed relative to the previous version.

### Related External Protocols

This protocol follows [Low Volume Methodology for Nextera DNA Flex Library Prep Kit (96 Samples)](https://www.protocols.io/view/low-volume-methodology-for-nextera-dna-flex-librar-be6rjhd6).
with minor modifications:

- Step 8: We use 56ul IPB and 29ul of nuclease free water instead of 54 and 48.
- Step 9: We think there is a mistake in the protocol; it is transfer at least 10ng of genomic DNA and not 100ng.
- Step 50: We use 12uL of IPB (undiluted stock) instead of 14.4uL. This step is to get the good fragment size in your library. We chose 12uL based on the paper (Bruinsma et al. 2018). Bead-linked transposomes enable anormalization-free workflow for NGS librarypreparation). Claudia also used 12uL and it worked great for me with an average fragment size of 337bp.

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
| BLT | Bead-Linked Transposomes |
| TB1 | Tagmentation Buffer |
| TSB | Tagmentation Stop Buffer |
| TWB | Tagmentation Wash Buffer |
| IPB | Illumina Purification Beads |
| RSB | Resuspension Buffer |

## BACKGROUND

### Summary

This protocol has been used by NOAA's AOML Omics Lab to library prep eDNA seawater samples from the Bio-GO-SHIP project for whole genome sequencing using the Illumina DNA Prep Kit (formerly Nextera DNA Flex Library Prep Kit). This is a low volume methodology that allows for the number of sequencing libraries that can be generated from each Illumina DNA Prep kit to more than double from 384 samples (4 x 96-wells) to 864 samples (9 x 96-wells). The minimum required amount of DNA per sample is 25ng (5 ng/uL) - quality of concentration yield and sequence reads drops off if input DNA is lower than 25ng. This protocol closely follows along with the following protocol with minor changes: <https://www.protocols.io/view/low-volume-methodology-for-nextera-dna-flex-librar-dm6gpr2r8vzp/v1>.

### Method description and rationale

Advantages to this protocol include enzymatic fragmentation instead of mechanical, compatibility with a wide range of DNA input quantities (25ng-500ng) and production of normalized library yields. This protocol's steps include: _thermal cycler and reagent preparation, DNA tagmentation_, _post tagmentation cleanup, tagmented DNA amplification_, _post-pcr library clean up_ and _quality control_. 
Genomic DNA is fragmented and tagged at the same time using bead-linked transposomes (BLTs). After tagmentation, a tagment stop buffer (TSA) is added and two rounds of wash steps are performed using tagment wash buffer (TWB). Tagmented DNA is combined with a PCR master mix and dual index adapters and amplified. Amplified DNA library concentrations are quantified using Qubit or Quant-It and pooled according to DNA concentration. The final pool is cleaned up by binding DNA to illumina purification beads (SPB), washing the beads then eluting DNA back into the solution using resuspension buffer (RSB). The final pool is then sent off for sequencing on an Illumina MiSeq System.

### Spatial coverage and environment(s) of relevance

According to the Illumina DNA Prep Kit (formerly known as Nextera DNA Flex) manual, this kit can be used for whole-genome sequencing of a wide range of genome sizes; for example, entire human genomes, large or complex genomes and small genomes. 

## PERSONNEL REQUIRED

One person with molecular biology experience.

### Safety

There are no hazardous chemicals or materials involved in this protocol. Standard lab safety techniques should still be used such as wearing PPE to avoid skin or eye contact.

### Training requirements

Basic molecular biology training is sufficient for this protocol including sterile technique, pipetting small volumes and programming/running PCR thermal cyclers.

### Time needed to execute the procedure

This protocol takes about 4-5 hours to execute. There is a safe-stopping point after the amplification of tagmented DNA (step #38) - plate can be stored overnight at 4°C (on thermal cyler or in 4°C fridge).

## EQUIPMENT

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| **Durable equipment** |
| Thermal cycler | Mastercycler Nexus Thermal Cycler | Eppendorf | 1 | Can be substituted with generic |
| Vortex | Vortex Genie | Scientific Industries | 1 | Can be substituted with generic |
| PCR Plate Centrifuge | Microplate Centrifuge | Generic Brand | 1 | Can be substituted with generic |
| Mag Stand | 96-Well Magnetic Separator | Generic Brand | 1 | Can be substituted with generic |
| 0.5-10 ul Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 100-1000 ul Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 10-100 ul Pipette | Eppendorf Research Plus Adjustable-Volume Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 10-100 ul 8-Channel Pipette | Eppendorf Research Plus 8 Channel Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| 0.5-10 uL 8-Channel Pipette | Eppendorf Research Plus 8 Channel Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| Serological Pipette | Eppendorf Easypet 3 Pipette | Eppendorf | 1 | Can be substituted with any accurate pipette |
| **Consumable equipment** |
| 96-well PCR plate | Armadillo PCR Plate, 96-well, clear, clear wells | ThermoFisher | 1 | |
| Aluminum Foil Sealing Tape | AlumaSeal II Sealing Foils for PCR and Cold Storage | VWR | 7 | Can be substituted with generic | 
| 8-Strip Tubes | 0.2 mL 8-Strip PCR Tubes | Generic Brand | 5 | tubes without caps attached are better |
| Microcentrifuge Tubes | 2.0 mL Microcentrifuge Tube | Generic Brand | 8 | Can be substituted with generic|
| 1000µL Filter Tips | OT-2 Filter Tips, 1000µL | Opentrons | 1 box | Can be substituted with generic |
| 200µL Filter Tips | OT-2 Filter Tips, 200µL | Opentrons | 7 boxes | Can be substituted with generic |
| 10 ul Filter tips | TipOne Pipette Tips, 10 uL | TipOne | 9 boxes | Can be substituted with generic |
| 25 mL Trough | Reagent Reservoirs - 25 mL Disposable | 1 box | Can be substituted with generic |
| 10 mL Serological Pipette Tip | 10 mL Serological Pipette Tip | Eppendorf | 1 | Can be substituted with generic |
| Gloves | Nitrile Gloves, Exam Grade, Powder-free | ULINE | 1 box | Can be substituted with generic |
| Kim Wipes | KimWipe Delicate Task Wipers | KimTech | 1 box | Can be substituted with generic |
| **Chemicals** |
| 80% Ethanol | Molecular biology grade ethanol |
| Proteinase K | Proteinase K, recombinant, PCR grade | ThermoFisher Scientific | 1 mL vial | |
| Nuclease-free water | Nuclease-Free Water (not DEPC-Treated) | ThermoFisher Scientific | 1 ml vial | |
| Illumina DNA Prep Kit | Illumina DNA Prep, (M) Tagmentation (24 samples, IPB) | Illumina | 1 kit | Kit includes Bead-Leaded Transposomes (BLT), Tagmentation Buffer (TB1), Tagmentation Stop Buffer (TSB), Tagmentation Wash Buffer (TWB), Illumina Purification Beads (IPB), Resuspension Buffer (RSB) - previously named Nextera DNA Flex Kit |
| Kapa Hifi Hotstart Kit | KAPA Hifi Hotstart Library Amplification Kit with Primer Mix | Roche | 1 kit | Kit includes KAPA Amplification Primer Mix (KAPA-PCR-F / KAPA-PCR-R), KAPA Hifi Hotstart ReadyMix |
| Dual Indexes - Set A, B, C | IDT for Illumina DNA/RNA UD Indexes Sets A-C (20027213, 20027214, 20042666) | Illumina | 1 set | Product will be discontinued Jan 2025 - switch to Illumina DNA/RNA UD Indexes Sets A-C (20091654, 20091656, 20091658) |

- Description: E.g., "filter".
- Product Name and Model: Provide the official name of the product.
- Manufacturer: Provide the name of the manufacturer of the product.
- Quantity: Provide quantities necessary for one application of the standard operating procedure (e.g., number of filters).
- Remark: For example, some of the consumable may need to be sterilized, some commercial solution may need to be diluted or shielded from light during the operating procedure.

## STANDARD OPERATING PROCEDURE

### Protocol

#### Prepare Thermal Cycler Settings

1. Enter and save the TAGflex tagmentation protocol on the thermal cyclers:

   - Enable the heated lid (to 100°C if the option is available)
   - 55°C for 15m followed by a hold at 10°C 

2. Enter and save the TAGstop tagmentation stop protocol on the thermal cyclers:

   - Enable the heated lid (to 100°C if the option is available)
   - 37°C for 15m followed by a hold at 10°C

3. Enter and save the flexPCR protocol on the thermal cyclers:

   - 72°C for 3m
   - 98°C for 3m
   - 12 cycles of:
      - 98°C for 45s
      - 62°C for 30s
      - 72°C for 2m
   - 72°C for 1m
   - 4°C hold

4. Enter and save the protK protocol on the thermal cyclers:

   - 37°C for 30m
   - 68°C for 10m
   - 4°C hold

#### Prepare Reagents

1. Equilibrate the following reagents at room temperature for 30 minutes:

   - Bead-Linked Transposomes (**BLT**)
   - Tagmentation Buffer (**TB1**)
   - Tagment Stop Buffer (**TSB**)
   - Tagment Wash Buffer (**TWB**)
   - Illumina Purification Beads (**IPB**)

2. Thaw the **Resuspension Buffer (RSB)** and bring to room temperature, then vortex to mix.
3. Prepare a **proteinase K** solution at 300 μg/mL:
   - For a 1mL solution: add 15μL of 20mg/mL proteinase K to 985μL of nuclease-free water.
4. Thaw **KAPA HiFi HotStart ReadyMix (2X)** on ice
5. Thaw **index Set A, B or C** at room temperature

   - Index plates: spin down to ensure no droplets remain on the plate cover.
   - Index stocks should be diluted to 10 Micromolar (µM) working stocks (most indexes are already 10 Micromolar)

6. Prepare a **Tagmentation Master Mix (TMM)**:

   - Vortex BLT vigorously before use and ensure the beads are evenly resuspended
   - TMM contains 1μL BLT and 1μL TB1 per reaction so for 96 wells, make a 110X mix:
   - 110 µl TB1 + 110 µl BLT
   - Vortex to mix

7. Prepare **PCR Master Mix (PCR MM)** on ice:

   - PCR MM contains 2.75μL nuclease-free water, 0.5μL KAPA-PCR-F primer, 0.5μL KAPA-PCR-R primer, and 6.25μL KAPA HiFi HotStart ReadyMix (2X) per reaction (KAPA primer stocks should be diluted to 10 Micromolar (µM))
   - Make a 110X mix: 302.5 µl nuclease-free water + 55 µl KAPA-PCR-F + 55 µl KAPA-PCR-R + 687.5 µl KAPA HiFi HotStart ReadyMix (2X) 
   - Vortex to mix and briefly spin down

8. Prepare a diluted **IPB Master Mix (IPB MM)**:
   - 56 µl IPB + 29 µl nuclease-free water

#### PCR

##### 96-Well DNA Tagmentation

9. Transfer at least 25ng genomic DNA (up to 500ng) into each well of a 96-well PCR plate in 1-5μL
10. Adjust the volume of each well to 5 µl total volume using nuclease-free water
11. Load 27 µl **TMM** into each tube of an 8-strip of PCR tubes

    - Vortex TMM thoroughly before use and ensure the beads remain evenly suspended while being aliquoted into the 96-well plate

12. Add 2 µl **TMM** to each well using an 8-channel pipette

    - Thoroughly mix by gentle pipetting
    - If beads are adhered to the top or side of the 96-well plate, briefly centrifuge and fully resuspend the bead pellet by pipetting until thoroughly mixed

13. Seal the plate with a PCR plate cover, place in a thermal cycler, and run the **TAGflex** program

    - It is especially important to be able to remove the plate seal as easily as possible to prevent cross contamination
    - Proceed **immediately** to the next steps upon completion of the TAGflex cycle

##### Post Tagmentation Cleanup

14. Load 15 µl **TSB** per tube in an 8-strip of PCR tubes
15. Gently remove the plate seal and add 1 µl **TSB** into each tagmentation reaction using an 8-channel pipette

    - Mix by gently pipetting the entire volume, ensuring the beads are fully resuspend

16. Seal the plate, place in a thermal cycler, and run the **TAGstop** program
17. Remove the seal and place the plate on a 96-well magnetic plate stand for 3 minutes or until solution is clear
18. Carefully remove the supernatant using an 8-channel pipette without disturbing the beads
19. Load 6 mL **TWB** into a sterile trough to pipette from
20. Remove the plate from the magnetic stand and add 20 µl **TWB** to each well using an 8-channel pipette

    - Mix by gently pipetting (slowly, to minimize foaming) until beads are fully resuspended

21. Place the plate on the magnetic stand for 3 minutes or until solution is clear
22. Carefully remove the supernatant using an 8-channel pipette without disturbing the beads
23. Repeat steps 20-22 one more time for a total of 2 washes
24. Remove the plate from the magnetic stand and add 20 µl **TWB** to each well

    - Gently pipette until beads are fully resuspended

25. Seal the plate and place on the magnetic stand to incubate until needed in the next section

    - Keeping the pellet in TWB helps prevent over-drying of the beads

##### Amplify Tagmented DNA

26. Load 135 µl **PCR MM** per tube into an 8-strip of PCR tubes (store on ice until needed)
27. Carefully remove the **TWB** supernatant from the samples while on the magnetic stand

    - Any remaining foam on the well walls should not adversely affect the library

28. Remove the plate from the magnetic stand and proceed immediately to the next step to prevent excessive drying of  the beads
29. Add 10 µl **PCR MM** to each sample and pipette the mix to ensure the beads are thoroughly resuspended

    - Pipette with moderate force as the beads can be difficult to fully resuspend

30. Seal the plate and spin down briefly up to 1000 rpm
31. Using an 8-channel pipette, add 2.5 µl of each well of **Index Set A, B or C** to their respective wells
32. Pipette to mix a minimum of 10 times, then seal the plate and briefly spin up to 1000 rpm
33. Place the plate in a thermal cycler and run the **flexPCR** program
34. Remove the plate from the thermal cycler and spin down for 1 minute at 280 x g
35. Load 35 µl of 300 μg/mL **proteinase K** per tube into an 8-strip of PCR tubes
36. Remove the plate seal and add 2.5 µl **proteinase K** to each PCR reaction using an 8-channel pipette

    - Mix the wells by pipetting a 10uL volume at least ten times

37. Seal the plate, place in a thermal cycler, and run the **protK** program
38. If stopping, keep the plate sealed and store at 4°C for up to 3 days. Otherwise, continue with the next section

| PCR Primer Name | Direction | Sequence (5’ -> 3’)|
| ----- | ----- | ----- |
| KAPA-PCR-F | forward | AATGATACGGCGACCACCG*A |
| KAPA-PCR-R | reverse | CAAGCAGAAGACGGCATACG*A |

The * is a phosphorothioate bond that prevents polymerases with 3'-5' proof-reading activity from chewing back the oligos.

#### Quality control & PCR clean-up

##### Post-PCR Library Clean Up

39. Remove the seal and place the plate on the magnetic stand for 5 minutes or until the supernatant is clear
40. Using an 8-channel pipette, transfer 2 µl **PCR supernatant** from each well into an 8-strip of PCR tubes
41. From the 8-strip of PCR tubes, transfer all samples to a single 1.5mL Eppendorf tube

    - Each tube in the strip should contain ~24μL of pooled sample, yielding ~192μL of pooled libraries

42. Vortex and briefly spin down to mix the pooled libraries evenly
43. Transfer a 45 µl aliquot of the pooled libraries to a new 1.5mL Eppendorf tube
44. Vortex and invert **IPB MM** multiple times to ensure full resuspension
45. Add 85 µl **IPB MM** to the pooled library aliquot

    - Pipette until thoroughly mixed
    - Complete mixing is critical to proper size distribution of libraries

46. Incubate at Room temperature for 5 minutes
47. Place the Eppendorf tube on a magnetic stand for 5 minutes or until the supernatant is clear
48. Transfer 120 µl supernatant into a new 1.5mL tube without disturbing the beads
49. Vortex and invert the **IPB** (undiluted stock) until thoroughly resuspended
50. Add 12 µl **IPB** (undiluted stock) to the new 1.5mL tube containing the supernatant
51. Pipette a 120μL volume until thoroughly mixed
52. Incubate at Room temperature for 5 minutes
53. Place the Eppendorf tube on a magnetic stand for 5 minutes or until clear
54. Remove and discard the supernatant without disturbing the beads
55. With the tube on the magnetic stand, add 200 µl **80% ethanol** without mixing and incubate for 30s
56. Pipette to remove the ethanol without disturbing the beads
57. Repeat steps 55-56 one more time for a total of 2 washes
58. Remove any excess liquid from the tube using a pipette without disturbing the beads
59. Air-dry beads on the magnetic stand for 5 minutes
60. Warm 35 µl **RSB** at 50 °C to increase final library yield
61. Remove the 1.5mL tube from the magnetic stand
62. Add 32 µl **RSB** (warm) to the beads. Pipette mix until thoroughly resuspended
63. Incubate on the bench at room temperature for 2 minutes
64. Place the 1.5mL tube back on the magnetic stand for 2 minutes or until clear
65. Transfer 30 µl supernatant into a new 1.5mL Eppendorf tube
66. Let the tube with the eluted library sit at 50 °C for 5 minutes to ensure complete dissolution of the library

##### Quality Control

67. Quantify the final library using a Qubit fluorometer and determine fragment size distribution using a Bioanalyzer OR use a TapeStation to quantify the concentration and view peak fragment size.

OPTIONAL POST-PCR NORMALIZATION STEP

- After step #39, there is the option to normalize the final pooled library by quantifying the DNA concentration of individual libraries (using Quant-It, Qubit, etc.) in order to pool equimolar amounts of each for a final pooled volume of 192 uL.

### Basic troubleshooting guide

Notes

- Use a different index set for each run. Multiple final pools from different runs can be pooled together for sequencing as long as they all used different index sets.
- A final pooled library DNA concentration of 5-10 ng/uL is sufficient and 10-15 ng/uL is ideal.

Low Final DNA Concentrations of Libraries

- It is recommended that at least one normalization step is included to create a final pooled library of quality. One option is to SpeedVac samples of lower DNA concentrations (< 5 ng/uL) prior to beginning this protocol. Additionally, using 5 uL of initial template DNA (step #9) of all samples is ideal. Including the extra post-pcr normalization step (listed above) can also help increase final library DNA concentration yield.

## REFERENCES

Low Volume Methodology for Illumina DNA Prep Kit: dx.doi.org/10.17504/protocols.io.be6rjhd6.
