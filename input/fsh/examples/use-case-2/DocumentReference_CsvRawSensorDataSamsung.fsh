Instance: CSVRawSensorDataSamsungUC2
InstanceOf: DocumentReference
Title: "CSV Raw Sensor Data of Samsung (UC2)"
Description: "CSV file with the raw accelerometer data of the Samsung phone from the home assessment session (100 Hz)."
Usage: #example
* id                             = "uc2-001-csv-raw-sensor-data-of-samsung"
* status                         = #current
* subject                        = Reference(uc2-001-patient)
* description                    = "CSV file with the raw accelerometer data of the Samsung phone from the home assessment session (100 Hz)."
* content.attachment.contentType = #text/csv
* content.attachment.url         = "https://example.org/whir/raw-data/session-2024-07-01-home-001_samsung_accelerometer_100Hz.csv"
* content.attachment.title       = "session-2024-07-01-home-001_samsung_accelerometer_100Hz.csv"
* content.attachment.creation    = "2024-07-01T09:10:10+02:00"
* content.profile.valueUri       = "https://fudickar-lab.github.io/WHIR/raw-data-format.html" // file follows the WHIR raw data file format
