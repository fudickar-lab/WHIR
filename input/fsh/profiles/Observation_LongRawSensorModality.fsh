Profile: LongRawSensorModalityObservation
Parent: Observation
Id: long-raw-sensor-modality-observation
Title: "Long Raw Sensor Modality Observation"
Description: """
Raw data of one sensor modality (single or multi-axis) recorded by a wearable sensor. It holds the same kind of data as PhdRtsaObservation in the HL7 Personal Health Device (PHD) IG, a periodic sample series, but instead of putting the samples in valueSampledData it references the CSV file with the raw data through derivedFrom.

The sensor placement is given as a reference to an IMUSensorPlacement and the measurement characteristics as a reference to an IMUDeviceMetric in device. code gives the sensor modality. Each component maps one axis to its column in the raw data file.
"""

// DeviceMetric describing the sensor
* device 1..1 MS
* device only Reference(IMUDeviceMetric)

// CSV (or other) file with the raw data
* derivedFrom 1..1 MS
* derivedFrom only Reference(DocumentReference)

// Sensor placement, e.g. L3
* bodyStructure 1..1 MS
* bodyStructure only Reference(IMUSensorPlacement)

// Sensor modality, e.g. accelerometer
* code MS
* code from SensorModality (extensible)

// One component per axis, the value is the column header in the raw data file (e.g. "x-axis (g)")
* component MS
* component.code MS
* component.code from SensorAxis (extensible)
* component.value[x] MS
* component.value[x] only string
