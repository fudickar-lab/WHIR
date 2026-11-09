// The full recording is not published. A synthetic excerpt in the same format is available on the
// Raw data file format page (sample-metawear-accelerometer.csv).

Instance: CSVRawSensorDataMMSUC1
InstanceOf: DocumentReference
Title: "CSV Raw Sensor Data of MMS (UC1)"
Description: "CSV file with the raw accelerometer data of the MMS sensor, as exported by the MetaWear app (50 Hz, 73,086 samples)."
Usage: #example
* id                             = "uc1-002-csv-raw-sensor-data-of-mms"
* status                         = #current
* subject                        = Reference(uc1-001-patient)
* description                    = "CSV file with the raw accelerometer data of the MMS sensor, as exported by the MetaWear app (50 Hz, 73,086 samples)."
* content.attachment.contentType = #text/csv
* content.attachment.url         = "https://example.org/whir/raw-data/010_MetaWear_2024-07-01T09.10.09.797_E84C1E353B9C_Accelerometer_50.000Hz_1.7.2.csv"
* content.attachment.title       = "010_MetaWear_2024-07-01T09.10.09.797_E84C1E353B9C_Accelerometer_50.000Hz_1.7.2.csv"
* content.attachment.creation    = "2024-07-01T09:10:09+02:00"
* content.attachment.hash        = "uZh8Ahp81vIzq3M/mh1BHcJh4N8=" // SHA-1, base64
* content.profile.valueCoding    = RawDataFileFormatCS#whir-csv "WHIR minimal CSV format" // file follows the WHIR raw data file format
