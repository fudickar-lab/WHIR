// DeviceMetricObservationProfile (PHD IG) does not allow derivedFrom, which we need.
// PhdRtsaObservation holds the same kind of data, but puts the samples in valueSampledData.
// For long recordings we reference the raw data file instead.

Instance: ObservationRawDataExampleMMSUC1
InstanceOf: LongRawSensorModalityObservation
Title: "Observation of Raw Data from MMS Sensor (UC1)"
Description: "Raw accelerometer data from the MMS sensor. Similar to PhdBaseObservation/DeviceMetricObservationProfile in the PHD IG."
Usage: #example
* id                       = "uc1-observation-accelerometer-raw-data-from-mms"
* identifier.system        = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value         = "session-2024-07-01-001" // recording session
* status                   = #preliminary // data may be incomplete or unverified
* category                 = $observation-category#activity "Activity" // TODO: or procedure?
* code                     = SensorModalityCS#accelerometer "Accelerometer"
* subject                  = Reference(uc1-001-patient)
* effectiveDateTime        = "2024-07-01T09:10:09+01:00" // first row of the CSV file is 2024-07-01T09:10:09.956
* device                   = Reference(uc1-002-mms-sensor-accelerometer-device-metric)
* device.display           = "three axis accelerometer"
* derivedFrom              = Reference(uc1-002-csv-raw-sensor-data-of-mms) // CSV file with the raw data
* bodyStructure            = Reference(uc1-001-body-structure-lumbar-vertebra) // L3
// Columns of the MetaWear CSV file
* component[0].code        = SensorAxisCS#x "X axis"
* component[=].valueString = "x-axis (g)"
* component[+].code        = SensorAxisCS#y "Y axis"
* component[=].valueString = "y-axis (g)"
* component[+].code        = SensorAxisCS#z "Z axis"
* component[=].valueString = "z-axis (g)"
