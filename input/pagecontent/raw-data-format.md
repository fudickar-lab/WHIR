WHIR does not put the samples of a recording into FHIR. The raw data stay in their file, and a [Long Raw Sensor Modality Observation](StructureDefinition-long-raw-sensor-modality-observation.html) references the file through a DocumentReference. This page defines the minimum a raw data file must meet so that a receiver can read it and match it to the activity labels and test results of the recording.

The key words SHALL, SHOULD and MAY are used as described in [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119).

### File structure

A raw data file referenced from WHIR SHALL be a CSV file with:

* UTF-8 encoding, a comma as field separator and a full stop as decimal separator,
* exactly one header row, followed by one row per sample in ascending time order,
* the sample timestamp in the **first column**, as Unix epoch time in milliseconds (UTC, integer),
* one column per axis of the sensor modality. The column header SHALL be identical to the `component.valueString` with which the Observation maps that axis (e.g. `x-axis (g)`), and the values SHALL be in the unit given in `unit` of the referenced [IMU Device Metric](StructureDefinition-imu-device-metric.html). The header SHOULD repeat the unit in parentheses.

One file holds one sensor modality of one device (e.g. the accelerometer of the MetaMotionS sensor), and is referenced by exactly one Long Raw Sensor Modality Observation. Further columns (e.g. a local time or elapsed time) MAY follow, but are informative only. A missing value is an empty field. Line endings MAY be LF or CRLF.

The CSV export of the MetaWear app used in the examples meets these rules without changes:

```
epoch (ms),time (01:00),elapsed (s),x-axis (g),y-axis (g),z-axis (g)
1719817809956,2024-07-01T09:10:09.956,0.000,-0.611,-0.260,0.778
1719817809976,2024-07-01T09:10:09.976,0.020,-0.611,-0.266,0.778
```

Note that the app writes the local wall-clock time in the second column but labels it with the standard-time offset (01:00), also during summer time. The epoch column is therefore the only reliable time reference, and the dateTime values in FHIR are computed from it (1719817809956 = 2024-07-01T07:10:09.956Z = 2024-07-01T09:10:09.956+02:00).

### DocumentReference

The DocumentReference for a raw data file SHALL give `content.attachment.contentType` (`text/csv`) and `content.attachment.url`, and SHOULD give `title` (the file name), `creation` and `hash` (SHA-1, base64), so that a receiver can check that it has the right file. `content.profile.valueCoding` SHALL be the code `whir-csv` from the [Raw Data File Format](CodeSystem-raw-data-file-format-cs.html) code system, to state that the file follows these rules.

### Time alignment

* `effectivePeriod.start` and `effectivePeriod.end` of the raw data Observation are the timestamps of the first and the last row of the file, with millisecond precision and the correct UTC offset.
* The nominal position of a sample is i ≈ (t<sub>i</sub> − t<sub>0</sub>) × f, where t<sub>0</sub> is `effectivePeriod.start` and f is `measurementFrequency` of the IMU Device Metric. If the timestamps in the file differ from the nominal sampling rate (jitter or lost samples), the timestamps in the file take precedence.
* The samples that belong to an [Activity Label Observation](StructureDefinition-activity-label-observation.html) or a [Functional Assessment Observation](StructureDefinition-functional-assessment-observation.html) are the rows with `effectivePeriod.start` ≤ t ≤ `effectivePeriod.end` of that Observation. Its effectivePeriod SHALL lie within the effectivePeriod of every raw data Observation it is derived from (invariant whir-2).
* All Observations of a recording session reference the same Encounter.

### Synchronization of several devices

The streams of several devices are aligned through their UTC timestamps. WHIR assumes that each device clock was synchronized before the recording (e.g. by the smartphone or gateway when the sensor connects) and does not correct clock drift. How the clocks were synchronized SHOULD be stated in the description of the dataset. If the data were resampled, synchronized after the recording or corrected for drift, this processing SHOULD be recorded in a Provenance resource for that processing run (see below), with the corrected data as a new raw data file.

### Coordinate system and orientation

The axes x, y and z are those of the sensor's own coordinate system as defined by the manufacturer. The orientation of the sensor on the body (e.g. which axis points down when the subject stands) is not yet represented by a structured element; until it is, it SHOULD be described in `BodyStructure.description` of the [IMU Sensor Placement](StructureDefinition-imu-sensor-placement.html). A structured representation of the sensor orientation is planned for a later version of this guide.

### Provenance of derived data

Each label and test result names the software that produced it in `device` (with the software version on the Device) and how a human was involved in the [Observation Annotation Provenance](StructureDefinition-observation-annotation-provenance.html) extension. In addition, one Provenance resource per processing run lists all Observations the run produced in `target`, the raw data Observations it read in `entity` (role `source`), and the software and people involved in `agent`. See [Provenance of the annotation run (use case 1)](Provenance-uc1-001-provenance-annotation-run.html) and [Provenance of the analysis run (use case 2)](Provenance-uc2-001-provenance-analysis-run.html).

### Sample files

The following files are short, **synthetic** excerpts (10 s each) in the formats used in the examples. They are not recorded data.

* [sample-metawear-accelerometer.csv](sample-metawear-accelerometer.csv): MetaMotionS accelerometer as exported by the MetaWear app, 50 Hz, unit g
* [sample-smartphone-accelerometer.csv](sample-smartphone-accelerometer.csv): smartphone accelerometer, 100 Hz, unit m/s²

All example resources of a use case, with their references resolved, are also available as one Bundle: [use case 1](Bundle-uc1-bundle.html) and [use case 2](Bundle-uc2-bundle.html).
