// hasMember only lists the raw data streams (one per sensor). Activity labels are not listed, since one
// session can have a few or several hundred of them. They can be found with
// Observation?identifier=session-2024-07-01-001&category=activity
// The session identifier is also what allows splitting a dataset by session, the usual way to avoid
// leakage between training and test sets in HAR.

Instance: AllObservationsUC1
InstanceOf: Observation
Title: "Recording Session (Use Case 1) (UC1)"
Description: "One data acquisition session in the lab, grouping the raw accelerometer data of both sensor devices under one session identifier."
Usage: #example
* id                    = "uc1-all-observations"
* identifier.system     = "https://fudickar-lab.github.io/WearableOn_5RHIF_Profile/sid/recording-session"
* identifier.value      = "session-2024-07-01-001"
* status                = #final
* category              = $observation-category#activity "Activity"
* code                  = $loinc#82287-4 "Physical activity panel"
* subject               = Reference(uc1-001-patient)
* effectivePeriod.start = "2024-07-01T09:10:09+01:00" // first sample in the CSV files
* effectivePeriod.end   = "2024-07-01T15:31:00+01:00"
* hasMember[0]          = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* hasMember[+]          = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
