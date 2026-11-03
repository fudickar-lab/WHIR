// PhdRtsaObservation (PHD IG) holds the same kind of data, but puts the samples in valueSampledData.
// For long recordings we reference the raw data file instead.

Instance: ObservationRawDataExampleSamsungUC1
InstanceOf: LongRawSensorModalityObservation
Title: "Observation of Raw Data from Samsung Sensor (UC1)"
Description: "Raw accelerometer data from the Samsung phone, recorded in parallel to the MMS sensor. Both streams use UTC epoch timestamps, so their samples can be aligned by time."
Usage: #example
* id                       = "uc1-observation-accelerometer-raw-data-from-samsung"
* identifier.system        = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value         = "session-2024-07-01-001-raw-samsung-accelerometer"
* status                   = #preliminary // data may be incomplete or unverified
* category                 = $observation-category#activity "Activity"
* code                     = SensorModalityCS#accelerometer "Accelerometer"
* subject                  = Reference(uc1-001-patient)
* encounter                = Reference(uc1-001-session-encounter)
* effectivePeriod.start    = "2024-07-01T09:10:10.010+02:00" // first row of the CSV file
* effectivePeriod.end      = "2024-07-01T09:34:31.990+02:00" // last row of the CSV file
* device                   = Reference(uc1-001-samsung-phone-accelerometer-device-metric)
* device.display           = "three axis accelerometer"
* derivedFrom              = Reference(uc1-001-csv-raw-sensor-data-of-samsung) // raw data file
* bodyStructure            = Reference(uc1-002-body-structure-right-pocket) // right pocket
// Columns of the raw data file, see the Raw data file format page
* component[0].code        = SensorAxisCS#x "X axis"
* component[=].valueString = "x (m/s2)"
* component[+].code        = SensorAxisCS#y "Y axis"
* component[=].valueString = "y (m/s2)"
* component[+].code        = SensorAxisCS#z "Z axis"
* component[=].valueString = "z (m/s2)"
