# WHIR (Wearable Health Interoperable Recordings) Implementation Guide

FHIR R5 implementation guide for wearable IMU data, written in FHIR Shorthand (FSH) and built with SUSHI and the HL7 IG Publisher.

It describes IMU recordings from the device and its sensors, through the raw data file, to activity labels, and covers two use cases:

1. Training data for machine learning (lab recording session)
2. Automatic geriatric assessment at home

## Structure

```
input/fsh/
  Aliases.fsh, CodeSystems.fsh, ValueSets.fsh
  profiles/                 8 profiles
  extensions/               4 extensions
  examples/use-case-1/      examples for use case 1, ids start with "uc1-"
  examples/use-case-2/      examples for use case 2, ids start with "uc2-"
input/pagecontent/          home page
input/images/               overview diagrams
```

Resources that occur in both use cases (patient, devices, raw data, ...) exist once per use case folder with their own ids, so each folder is a complete example set.

## Build

Run `_updatePublisher.bat` (or `.sh`) once to download the IG Publisher, then `_genonce.bat` (or `.sh`). The result is in `output/index.html`, the validation report in `output/qa.html`.

## Continuous build

`.github/workflows/build-ig.yml` builds the IG on GitHub Actions after every push to `main` (and for pull requests). The built IG, including the validation report `qa.html`, can be downloaded from each run under "Artifacts" (`ig-output`).

To publish it on GitHub Pages at the canonical URL https://fudickar-lab.github.io/WHIR/:

1. Settings > Pages > Source: "GitHub Actions"
2. Settings > Secrets and variables > Actions > Variables: add `DEPLOY_PAGES` with the value `true`

GitHub Pages for a private repository needs a paid GitHub plan, and the published site is public.
