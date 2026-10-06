// DeviceMetricObservationProfile (PHD IG) does not allow derivedFrom, which we need.
// PhdCompoundNumericObservation would match even better.

Instance: ObservationRawDataExampleSamsungUC2
InstanceOf: LongRawSensorModalityObservation
Title: "Observation of Raw Data from Samsung Sensor (UC2)"
Description: "Raw accelerometer data from the Samsung phone. Similar to PhdBaseObservation/DeviceMetricObservationProfile in the PHD IG."
Usage: #example
* id                = "uc2-observation-accelerometer-raw-data-from-samsung"
* status            = #preliminary // data may be incomplete or unverified
* category          = $observation-category#activity "Activity" // TODO: or procedure?
* code              = SensorModalityCS#accelerometer "Accelerometer"
* subject           = Reference(uc2-001-patient)
* effectiveDateTime = "2024-07-01T09:10:09+01:00" // first row of the CSV file is 2024-07-01T09:10:09.956
* device            = Reference(uc2-001-samsung-phone-accelerometer-device-metric)
* device.display    = "three axis accelerometer"
* derivedFrom       = Reference(uc2-001-csv-raw-sensor-data-of-samsung) // CSV file with the raw data
* bodyStructure     = Reference(uc2-002-body-structure-right-pocket) // right trouser pocket
