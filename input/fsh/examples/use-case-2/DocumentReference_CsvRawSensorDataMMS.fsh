Instance: CSVRawSensorDataMMSUC2
InstanceOf: DocumentReference
Title: "CSV Raw Sensor Data of MMS (UC2)"
Description: "CSV file with the raw accelerometer data of the MMS sensor from the home assessment session, as exported by the MetaWear app (50 Hz)."
Usage: #example
* id                             = "uc2-002-csv-raw-sensor-data-of-mms"
* status                         = #current
* subject                        = Reference(uc2-001-patient)
* description                    = "CSV file with the raw accelerometer data of the MMS sensor from the home assessment session, as exported by the MetaWear app (50 Hz)."
* content.attachment.contentType = #text/csv
* content.attachment.url         = "https://example.org/whir/raw-data/session-2024-07-01-home-001_metawear_accelerometer_50Hz.csv"
* content.attachment.title       = "session-2024-07-01-home-001_metawear_accelerometer_50Hz.csv"
* content.attachment.creation    = "2024-07-01T09:10:09+02:00"
* content.profile.valueCoding    = RawDataFileFormatCS#whir-csv "WHIR minimal CSV format" // file follows the WHIR raw data file format
