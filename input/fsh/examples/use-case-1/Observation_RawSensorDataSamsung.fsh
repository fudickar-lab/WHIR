// PhdRtsaObservation (PHD IG) holds the same kind of data, but puts the samples in valueSampledData.
// For long recordings we reference the raw data file instead.

Instance: ObservationRawDataExampleSamsungUC1
InstanceOf: LongRawSensorModalityObservation
Title: "Observation of Raw Data from Samsung Sensor (UC1)"
Description: "Raw accelerometer data from the Samsung phone. Similar to PhdBaseObservation/DeviceMetricObservationProfile in the PHD IG."
Usage: #example
* id                = "uc1-observation-accelerometer-raw-data-from-samsung"
* identifier.system = "https://fudickar-lab.github.io/WearableOn_5RHIF_Profile/sid/recording-session"
* identifier.value  = "session-2024-07-01-001" // recording session
* status            = #preliminary // data may be incomplete or unverified
* category          = $observation-category#activity "Activity" // TODO: or procedure?
* code              = SensorModalityCS#accelerometer "Accelerometer"
* subject           = Reference(uc1-001-patient)
* effectiveDateTime = "2024-07-01T09:10:09+01:00" // first row of the CSV file is 2024-07-01T09:10:09.956
* device            = Reference(uc1-001-samsung-phone-accelerometer-device-metric)
* device.display    = "three axis accelerometer"
* derivedFrom       = Reference(uc1-001-csv-raw-sensor-data-of-samsung) // CSV file with the raw data
* bodyStructure     = Reference(uc1-002-body-structure-right-pocket) // right pocket
