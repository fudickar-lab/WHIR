<div class="stu-note">
This guide is a draft (version 0.1.0) and is still changing. It accompanies the paper <em>Leveraging FHIR for the Exchange of Wearable IMU Data</em>, which is in preparation.
</div>

### Scope

Wearables with inertial measurement units (IMUs) record accelerometer, gyroscope and magnetometer data, often for hours or days. These recordings are usually stored in proprietary or ad-hoc CSV files, together with a separate configuration file, and the information needed to reuse them (which sensor, where on the body, at what sampling rate, in which unit) is lost easily.

This implementation guide describes how to represent such recordings in FHIR R5, from the device and its sensors, through the raw data, to the activity labels that are derived from it. The raw samples stay in their original file and are referenced from FHIR, so long recordings do not have to be embedded in an Observation.

### Use cases

**Use case 1: training data for machine learning.** IMU data is recorded in a lab with several devices at the same time (here a MetaMotionS sensor on the lower back and a smartphone in the trouser pocket). An annotator or annotation software labels the activities (e.g. walking, TUG). The guide makes it possible to describe the devices, placements and labels in the same way across datasets, and to split a dataset by recording session.

**Use case 2: automatic geriatric assessment at home.** Standardised mobility tests such as the Timed Up and Go (TUG) or the 30-second chair stand test are recorded at home and evaluated by software. A clinician interprets the results in a report, which can lead to a finding such as frailty and a home exercise programme like the Otago Exercise Programme.

### Overview

<figure>
  <img src="overview.svg" alt="Core profiles of this guide and the references between them" style="width:100%;max-width:820px"/>
  <figcaption>Core profiles for devices, placement, raw data and activity labels, used in both use cases.</figcaption>
</figure>

### Profiles

| Profile | Based on | Purpose |
|---|---|---|
| [IMU Sensor Device](StructureDefinition-imu-sensor-device.html) | Device | The physical sensor, e.g. the accelerometer in a sensor device or phone |
| [IMU Device Metric](StructureDefinition-imu-device-metric.html) | DeviceMetric | Sensor modality, unit, sampling rate and calibration |
| [IMU Sensor Placement](StructureDefinition-imu-sensor-placement.html) | BodyStructure | Where the sensor was worn and how it was attached |
| [Long Raw Sensor Modality Observation](StructureDefinition-long-raw-sensor-modality-observation.html) | Observation | One recorded signal, referencing the raw data file |
| [Activity Label Observation](StructureDefinition-activity-label-observation.html) | Observation | A labeled time interval of the raw data (ground truth, classifier output or test result) |
{: .grid}

### Geriatric assessment (use case 2)

Three more profiles cover what happens after a home assessment. The test results (e.g. TUG, 30-second chair stand) are Activity Label Observations. A report interprets them, the resulting finding is recorded as a Condition, and a care plan with individual exercise prescriptions addresses it.

<figure>
  <img src="overview-geriatric.svg" alt="Geriatric assessment profiles and the references between them" style="width:100%;max-width:820px"/>
  <figcaption>Profiles for the geriatric assessment use case.</figcaption>
</figure>

| Profile | Based on | Purpose |
|---|---|---|
| [Geriatric Assessment Report](StructureDefinition-geriatric-assessment-report.html) | DiagnosticReport | Interpretation of the test results of a home assessment |
| [Geriatric Exercise Care Plan](StructureDefinition-geriatric-exercise-care-plan.html) | CarePlan | Home exercise programme that addresses the finding |
| [Geriatric Exercise Prescription](StructureDefinition-geriatric-exercise-prescription.html) | ServiceRequest | One exercise of that programme |
{: .grid}

The examples for this use case, including the recording session at home, are listed under "Use case 2 examples" on the [Artifacts](artifacts.html) page.

### Extensions

| Extension | Used on | Purpose |
|---|---|---|
| [Body Structure Attachment Method](StructureDefinition-body-structure-attachment-method.html) | BodyStructure | How the device was fixed to the body, e.g. belt, pocket, watch strap |
| [Body Structure Placement Qualifier](StructureDefinition-body-structure-placement-qualifier.html) | BodyStructure | Which side is meant, e.g. dominant wrist |
| [Observation Annotation Provenance](StructureDefinition-observation-annotation-provenance.html) | Observation | Whether a label was set by a human, an algorithm or both |
| [Observation Annotation Confidence](StructureDefinition-observation-annotation-confidence.html) | Observation | Confidence of the algorithm for a label |
{: .grid}

### Terminology

SNOMED CT, LOINC, UCUM and ISO/IEEE 11073 codes are used where a suitable concept exists. The other codes are defined locally, based on a review of 23 published HAR datasets.

- **Sensor placement:** [HAR Body Locations](ValueSet-har-body-locations.html), [Placement Qualifier](ValueSet-placement-qualifier.html), [Attachment Method](ValueSet-attachment-method.html)
- **Device and signal:** [IMU Sensor Types](ValueSet-imu-sensor-types.html), [IMU Sensor Device Categories](ValueSet-imu-sensor-device-categories.html), [IMU Device Metric Type](ValueSet-imu-device-metric-type.html), [Sensor Modality](ValueSet-sensor-modality.html), [Sensor Axis](ValueSet-sensor-axis.html), [IMU Sensor Units](ValueSet-imu-sensor-units.html)
- **Activity labels:** [Activity Labels](ValueSet-activity-labels.html), combining [HAR Activity Labels](ValueSet-har-activity-labels.html), [Geriatric Assessment Labels](ValueSet-geriatric-assessment-labels.html) and [ADL Labels](ValueSet-adl-labels.html), plus [Annotation Provenance](ValueSet-annotation-provenance.html)

All profiles, extensions, value sets and code systems are listed on the [Artifacts](artifacts.html) page, together with the examples of each use case.

### Relation to the Personal Health Device IG

The guide builds on the HL7 [Personal Health Device (PHD) Implementation Guide](https://hl7.org/fhir/uv/phd/), which covers devices that send individual measurements. For periodic data the PHD IG embeds the samples in `Observation.valueSampledData`. That works for short signals, but not for IMU recordings of several hours, so this guide references the raw data file instead and adds what the PHD IG does not cover: sensor placement and activity labels.
