// DeviceMetricObservationProfile (PHD IG) does not allow derivedFrom, which we need.
// PhdRtsaObservation holds the same kind of data, but puts the samples in valueSampledData.
// For long recordings we reference the raw data file instead.

Instance: ObservationRawDataExampleMMSUC1
InstanceOf: LongRawSensorModalityObservation
Title: "Observation of Raw Data from MMS Sensor (UC1)"
Description: "Raw accelerometer data from the MMS sensor. effectivePeriod runs from the first to the last sample of the CSV file, so every activity label of the session lies within it."
Usage: #example
* id                       = "uc1-observation-accelerometer-raw-data-from-mms"
* identifier.system        = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value         = "session-2024-07-01-001-raw-mms-accelerometer"
* status                   = #preliminary // data may be incomplete or unverified
* category                 = $observation-category#activity "Activity"
* code                     = SensorModalityCS#accelerometer "Accelerometer"
* subject                  = Reference(uc1-001-patient)
* encounter                = Reference(uc1-001-session-encounter)
* effectivePeriod.start    = "2024-07-01T09:10:09.956+02:00" // first row of the CSV file, epoch 1719817809956
* effectivePeriod.end      = "2024-07-01T09:34:32.056+02:00" // last row of the CSV file, epoch 1719819272056
* device                   = Reference(uc1-002-mms-sensor-accelerometer-device-metric)
* device.display           = "three axis accelerometer"
* derivedFrom              = Reference(uc1-002-csv-raw-sensor-data-of-mms) // raw data file
* bodyStructure            = Reference(uc1-001-body-structure-lumbar-vertebra) // L3
// Columns of the raw data file, see the Raw data file format page
* component[0].code        = SensorAxisCS#x "X axis"
* component[=].valueString = "x-axis (g)"
* component[+].code        = SensorAxisCS#y "Y axis"
* component[=].valueString = "y-axis (g)"
* component[+].code        = SensorAxisCS#z "Z axis"
* component[=].valueString = "z-axis (g)"
