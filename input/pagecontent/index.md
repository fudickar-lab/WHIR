<div class="stu-note">
This guide is a draft (version 0.1.0) and is still changing. It accompanies the paper <em>Leveraging Fast Healthcare Interoperability Resources (FHIR) for the Exchange of Wearable Inertial Sensor Data: Design and Development Study</em> (see <a href="#citing-this-guide">Citing this guide</a>).
</div>

### Scope

Wearables record health-related data continuously and outside the clinic, often for hours or days. These recordings are usually stored in proprietary or ad-hoc files, and the information needed to reuse them (which sensor, where on the body, how it was configured, and what happened during the recording) is easily lost. Electronic health records cannot interpret them.

WHIR (Wearable Health Interoperable Recordings) describes how to represent wearable recordings and their metadata in FHIR R5. Its structure is generic for wearable sensors:

* the **device** and the sensors it contains,
* the **configured measuring capability** of each sensor (modality, unit, sampling rate, calibration),
* the **sensor placement** on the body,
* the **raw recording**, which stays in its original file and is referenced from FHIR, and
* the **labels** derived from it, for example activities or test results.

This first version covers **wearable inertial measurement units (IMUs)** – accelerometer, gyroscope and magnetometer – the most common sensors in human activity recognition (HAR). Its requirements are based on a review of 23 published HAR datasets. Other wearable sensors can be added by following the same structure.

### Use cases

The guide is demonstrated in two use cases. **Both use cases are fully implemented as example instances in FHIR Shorthand (FSH)**, which together cover every profile and extension of this guide. The FSH sources are in [`input/fsh/examples`](https://github.com/fudickar-lab/WHIR/tree/main/input/fsh/examples) on GitHub (`use-case-1` and `use-case-2`), and the generated examples are listed by use case on the [Artifacts](artifacts.html) page.

#### Use case 1: IMU data for machine learning

IMU data are recorded in a controlled laboratory setting to develop machine learning models for HAR, fall detection or the automation of geriatric assessments. Several IMU devices are used at the same time to capture a comprehensive set of sensor data. In the example, a MetaMotionS (MMS) sensor is worn on a belt at the level of the third lumbar vertebra (SNOMED CT 263301002) and a smartphone is carried in the right trouser pocket (SNOMED CT 37117007).

The focus lies on the metadata of the different IMU sensors and their placement, and on the activity labels needed for supervised learning:

* Each device is described with its sensors and device metrics (modality, unit, sampling rate).
* The raw data of each sensor are recorded in a CSV file, referenced by a DocumentReference. A raw-data Observation per sensor modality links the file, the sensor and the body placement.
* Annotation software labels time intervals of the recording with activities such as walking or the Timed Up and Go (TUG) test. Each label is an Activity Label Observation that records whether it was set by a human, an algorithm or both, and with which confidence.
* A practitioner (assessor) supervises the recording session to ensure correct data collection and labeling, and is the performer of the label observations.
* The recording session and its sub-sessions are represented as Encounters, so that a dataset can be split by session.

<figure>
  <img src="use-case-1-instances.png" alt="Instance diagram for use case 1" style="width:100%;max-width:1110px"/>
  <figcaption>Instance diagram for use case 1: devices, device metrics, patient, raw-data observations with referenced CSV files, body structures and activity label observations.</figcaption>
</figure>

#### Use case 2: Automated geriatric assessment at home

Automated geriatric assessments are performed in the home setting. The subject wears a minimal set of sensors, for example one MMS sensor at the level of the third lumbar vertebra, and uses a mobile application that automatically generates the assessment results. The results are transmitted to the practitioner for further analysis, or uploaded directly to the electronic health record.

* The raw accelerometer data are processed by the same annotation software pattern as in use case 1. Here the labels are two standardized geriatric mobility tests instead of an activity class: a **Timed Up and Go** result (LOINC 89423-8, a Quantity in seconds) and a **30-second chair stand test** result (LOINC 66247-8, a Quantity in stands per 30 s). Representing them as numeric values keeps the measured value and makes trends across visits possible.
* Both results are referenced as supporting information of a **Geriatric Assessment Report** (LOINC 100467-0, Geriatric medicine Outpatient Progress note) that the assessor interprets.
* The report leads to a **Condition** with the geriatric conclusion (for example SNOMED CT 248279007, Frailty, with severity "severe"). The Condition refers back to the report as its evidence.
* The recording is part of a home-health Encounter at the patient's home, based on a two-week **Geriatric Exercise Care Plan**. Each planned exercise (here from the Otago Exercise Programme) is a separate **Geriatric Exercise Prescription** that the care plan references.

<figure>
  <img src="use-case-2-instances.png" alt="Instance diagram for use case 2" style="width:100%;max-width:1110px"/>
  <figcaption>Instance diagram for use case 2: home-health encounter, devices, raw-data observations, TUG and 30-second chair stand results from the annotation software, Geriatric Assessment Report, Condition and Geriatric Exercise Care Plan.</figcaption>
</figure>

### Overview

<figure>
  <img src="fhir-model-overview.png" alt="FHIR R5-based model for wearable sensor data" style="width:100%;max-width:1110px"/>
  <figcaption>FHIR R5-based model for wearable sensor data. Colors distinguish device definitions (orange), device metadata (yellow), observation data of a recording session (green), observations generated by machine learning (blue), the context of the recording (pink), conclusions from the recording sessions (purple) and externally defined profiles (grey).</figcaption>
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

### Geriatric assessment

Three more profiles cover what happens after a home assessment. The test results (e.g. TUG, 30-second chair stand) are Activity Label Observations. A report interprets them, the resulting finding is recorded as a Condition, and a care plan with individual exercise prescriptions addresses it (pink and purple classes in the overview above).


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


### Citing this guide

If you use WHIR in your work, please cite the accompanying paper:

> Ciortuz G, Wiedekopf J, Ulrich H, Hozhabr Pour H, Fudickar S. Leveraging Fast Healthcare Interoperability Resources (FHIR) for the Exchange of Wearable Inertial Sensor Data: Design and Development Study. 2026.

A DOI will be added here after submission and publication of the preprint.
