// DeviceMetricObservationProfile (PHD IG) does not allow derivedFrom, which we need.
// PhdCompoundNumericObservation would match even better.

Instance: ObservationRawDataExampleSamsungUC2
InstanceOf: LongRawSensorModalityObservation
Title: "Observation of Raw Data from Samsung Sensor (UC2)"
Description: "Raw accelerometer data from the Samsung phone, recorded in parallel to the MMS sensor during the home assessment session."
Usage: #example
* id                       = "uc2-observation-accelerometer-raw-data-from-samsung"
* identifier.system        = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value         = "session-2024-07-01-home-001-raw-samsung-accelerometer"
* status                   = #preliminary // data may be incomplete or unverified
* category                 = $observation-category#activity "Activity"
* code                     = SensorModalityCS#accelerometer "Accelerometer"
* subject                  = Reference(uc2-001-patient)
* encounter                = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start    = "2024-07-01T09:10:10.010+02:00" // first row of the CSV file
* effectivePeriod.end      = "2024-07-01T15:29:59.990+02:00" // last row of the CSV file
* device                   = Reference(uc2-001-samsung-phone-accelerometer-device-metric)
* device.display           = "three axis accelerometer"
* derivedFrom              = Reference(uc2-001-csv-raw-sensor-data-of-samsung) // raw data file
* bodyStructure            = Reference(uc2-002-body-structure-right-pocket) // right trouser pocket
// Columns of the raw data file, see the Raw data file format page
* component[0].code        = SensorAxisCS#x "X axis"
* component[=].valueString = "x (m/s2)"
* component[+].code        = SensorAxisCS#y "Y axis"
* component[=].valueString = "y (m/s2)"
* component[+].code        = SensorAxisCS#z "Z axis"
* component[=].valueString = "z (m/s2)"
