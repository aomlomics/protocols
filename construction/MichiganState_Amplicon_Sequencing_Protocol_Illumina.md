---
# MIOP terms
methodology_category: omics analysis
project: "NOAA Atlantic Oceanographic and Meteorological Laboratory Omics Program; https://github.com/aomlomics/protocols; https://zenodo.org/communities/aomlomics"
purpose: amplicon sequencing assay [OBI:0002767] | polymerase chain reaction assay [OBI:0002692]
analyses: amplicon sequencing assay [OBI:0002767] | polymerase chain reaction assay [OBI:0002692]
geographic_location: Atlantic Ocean [GAZ:00000344], Gulf of Mexico [GAZ:00002853]
broad_scale_environmental_context: marine biome [ENVO:00000447]
local_environmental_context: marine pelagic zone [ENVO:00000208], marine benthic biome [ENVO:01000024]
environmental_medium: seawater [ENVO:01001964]
target: 16S [NCIT:C105370], 18S [NCIT:C48172], 12S mitochondrial ribosomal RNA  [NCIT:C128263]
creator: Luke Thompson
materials_required: vortexer [OBI:0400118], PCR instrument [OBI:0000989], agarose gel electrophoresis system [OBI:0001134]
skills_required: sterile technique, pipetting skills, standard molecular technique
time_required: 240
personnel_required: 1
language: en
issued: 2025-12-19
audience: scientists
publisher: NOAA Atlantic Oceanographic and Meteorological Laboratory
hasVersion: 1
license: CC0 1.0 Universal
maturity level: mature

# FAIRe terms
sequencing_location: Michigan State University Research Technology Support Facility Genomics Core
platform: ILLUMINA
instrument: Illumina MiSeq [OBI:0002003]
seq_kit: MiSeq Reagent Kit v2 (500 cycles)
lib_layout: paired
adapter_forward: ACACTGACGACATGGTTCTACA
adapter_reverse: TACGGTAGCAGAGACTTGGTCT
lib_screen: normalized using Invitrogen SequalPrep
lib_conc_meth: quantified using Qubit dsDNA HS, Agilent 4200 TapeStation HS DNA1000 and Invitrogen Collibri Library Quantification qPCR
seq_method_additional: not applicable

---

# NOAA/AOML Sequencing Protocol

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
| Luke Thompson | NOAA/AOML, MSU/NGI | <https://orcid.org/0000-0002-3911-1280> | 2025-12-19 |
| Sammy Harding | NOAA/AOML, MSU/NGI | <https://orcid.org/0009-0008-8885-6140> | 2025-12-19 |

## RELATED PROTOCOLS

| PROTOCOL NAME | LINK  | VERSION | RELEASE DATE|
| ------------- | ------------- | ------------- | ------------- |
| NOAA/AOML PCR Protocol 16S rRNA V4-V5 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu16sv4v5_emp.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 12S rRNA V5-V6 (MiFish) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu12sv5v6_mifish.md> | 1.1.0 | 2024-11-16 |
| NOAA/AOML PCR Protocol 18S rRNA V9 (EMP) | <https://github.com/aomlomics/protocols/blob/main/markdown/protocol_pcr_ssu18sv9_emp.md> | 1.1.0 | 2024-11-16 |

## RELATED EXTERNAL PROTOCOLS

| PROTOCOL NAME | LINK | ISSUER / AUTHOR | ACCESS DATE |
| ------------ | ------------ | ------------ | ---------- |
| Not applicable |  |  |  |

### Protocol Revision Record

| VERSION | RELEASE DATE | DESCRIPTION OF REVISIONS |
| ------------- | ------------- | ------------- |
| 1.0.0 | 2021-02-28 | Initial release |

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

This protocol describes steps for preparing, sending and sequencing eDNA samples extracted from Sterivex and amplified using 16S V4-V45 rRNA, 18S V9 rRNA and 12S MiFish primers at NOAA's AOML. The second PCR and subsequent Illumina MiSeq sequencing steps are performed by Michigan State University's Research Technology Support Facility (RTSF) Genomics Core.

### Method description and rationale

This protocol is used for preparing and sending 16S V4-V45 rRNA, 18S V9 rRNA and 12S MiFish amplified eDNA samples to MSU's RTSF Genomics Core for Illumina MiSeq sequencing. It can be adapted for a full 96-well plate or a minimum of 24 samples to be submitted to the RTSF.

### Spatial coverage and environment(s) of relevance

This protocol can be used to prepare, send and sequence any target-specific amplified DNA samples at MSU's RTSF Genomics Core.

## PERSONNEL REQUIRED

One person with molecular biology experience.

### Safety

There are no hazardous chemicals or materials involved in this protocol. Standard lab safety techniques should still be used such as wearing PPE to avoid skin or eye contact.

### Training requirements

Basic molecular biology training is sufficient for this protocol including sterile technique and pipetting small volumes.

### Time needed to execute the procedure

Protocol takes about 4 hours (240 minutes).

## EQUIPMENT

For 96-well Plate:

| DESCRIPTION | PRODUCT NAME AND MODEL | MANUFACTURER | QUANTITY | REMARK |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| Durable equipment |
| Content Cell | Content Cell | Content Cell | Content Cell | Content Cell |
| Content Cell | Content Cell | Content Cell | Content Cell | Content Cell |
| Consumable equipment |
| Content Cell | Content Cell | Content Cell | Content Cell | Content Cell |
| Content Cell | Content Cell | Content Cell | Content Cell | Content Cell |
| Chemicals |
| Content Cell | Content Cell | Content Cell | Content Cell | Content Cell |
| Content Cell | Content Cell | Content Cell | Content Cell | Content Cell |

- Description: E.g., "filter".
- Product Name and Model: Provide the official name of the product.
- Manufacturer: Provide the name of the manufacturer of the product.
- Quantity: Provide quantities necessary for one application of the standard operating procedure (e.g., number of filters).
- Remark: For example, some of the consumable may need to be sterilized, some commercial solution may need to be diluted or shielded from light during the operating procedure.

## STANDARD OPERATING PROCEDURE

### Protocol

#### Sequencing Preparation

1. After performing a gel on the PCR products, pipette 10 uL of each sample into their respective wells of a new 96-well PCR plate.
    - Leave well H12 empty for Michigan State's sequencing negative control
3. Seal plate, label with ID and place in freezer till day of shipping.
4. Fill out Illumina Sample Submission form with sample information and 96-well plate format.
    - Can be found online at: [LIMS Project Submission](https://rtsf.natsci.msu.edu/genomics/lims-project-submission.aspx)
5. Login to [LabLink](https://msu.claritylims.com/lablink/login) and create a project for the sequencing run.
6. Upload project and run information, sample submission form and gel images (annotated) to the project.
7. Prepare plates for shipping by obtaining dry ice (5-10lbs depending on quantity of plates), a styrofoam cooler and fitted cardboard box.
8. Place 1-2 inches of dry ice on bottom of styrofoam cooler followed by sequencing plates then the remainder of dry ice.
9. Place lid on cooler (do not tape shut) and place cooler into cardboard box.
10. Tape the cardboard box shut and attach a shipping label.

#### Sequencing Information

Information on sequencing is provided by Michigan State University's Genomics Core Facility:

1. The Genomics Core performs a secondary PCR using dual-indexed, Illumina compatible primers which target the Fluidigm CS1/CS2 oligomers at the ends of the primary PCR products.

| Sequencing Primer Name | Direction | Sequence (5’ -> 3’)|
| ----- | ----- | ----- |
| content | forward | content |
| content | reverse | content |

2. Amplicons are batch normalized using the Charm Biotech PCR Normalization and Purification kit and the recovered product is pooled.

3. The pool is QC'd and quantified using a combination of Biotium AccuGreen High Sensitivity dsDNA, Agilent 4200 TapeStation HS DNA1000 and Invitrogen Collibri Library Quantification qPCR assays.

4. Each pool is loaded onto one (1) Illumina MiSeq v2 Standard flow cell. Sequencing is carried out in a 2x250bp paired end format using a MiSeq v2 500 cycle reagent cartridge. Custom sequencing and index primers complementary to the Fluidigm CS1 and CS2 oligomers are added to appropriate wells of the reagent cartridge.

5. Base calling is done by Illumina Real Time Analysis (RTA) v1.18.54 and output of RTA is demultiplexed and converted to FastQ format with Illumina Bcl2fastq v2.20.0. A summary of the run output is provided by MSU and basic QC information about sequence data is provided by the accompanying FastQC reports. For information regarding interpretation of these reports, please see the FastQC Tutorial and FAQ from [MSU's website](https://rtsf.natsci.msu.edu/genomics/technical-documents/fastqc-tutorial-and-faq.aspx).

6. Data is downloaded using an account on the Genomics FTP server. See the [Genomics FAQ](https://rtsf.natsci.msu.edu/genomics/data-retrieval.aspx) for general instructions. Sequence data typically remains available on the FTP server for 60 days. It is the responsibility of the researcher to download and store data long term. The RTSF Genomics Core only guarantees retention of sequence data for one year from the date of availability.

## Quality control

Samples being sent for sequencing at the RTSF are required to have a gel performed to confirm amplification. Upon arriving to the RTSF, amplicons are batch normalized using the Charm Biotech PCR Normalization and Purification kit and pooled. The pool is QC'd and quantified using a combination of Biotium AccuGreen High Sensitivity dsDNA, Agilent 4200 TapeStation HS DNA1000 and Invitrogen Collibri Library Quantification qPCR assays to ensure quality prior to sequencing. Summaries of all run outputs are provided to the user by MSU and QC information about sequence data is provided by FastQC reports.

## Basic troubleshooting guide

Not applicable.

# REFERENCES

Kozich, J. J. et al. Development of a dual-index sequencing strategy and curation pipeline for analyzing amplicon sequence data on the MiSeq Illumina sequencing platform. Applied and environmental microbiology 79, 5112–5120 (2013).

Klindworth, A. et al. Evaluation of general 16S ribosomal RNA gene PCR primers for classical and next-generation sequencing-based diversity studies. Nucleic Acids Res 41, e1–e1 (2013).

# APPENDIX A: DATASHEETS

Not applicable.
