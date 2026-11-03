// hasMember only lists the raw data streams (one per sensor). Activity labels are not listed, since one
// session can have a few or several hundred of them. All Observations of the session reference the same
// Encounter, so the labels can be found with
// Observation?encounter=Encounter/uc1-001-session-encounter&category=activity

Instance: AllObservationsUC1
InstanceOf: Observation
Title: "Recording Session (Use Case 1) (UC1)"
Description: "Groups the raw accelerometer data of both sensor devices recorded in one lab session."
Usage: #example
* id                    = "uc1-all-observations"
* identifier.system     = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value      = "session-2024-07-01-001-panel"
* status                = #final
* category              = $observation-category#activity "Activity"
* code                  = $loinc#82287-4 "Physical activity panel"
* subject               = Reference(uc1-001-patient)
* encounter             = Reference(uc1-001-session-encounter)
* effectivePeriod.start = "2024-07-01T09:10:09.956+02:00" // first sample of the MMS file
* effectivePeriod.end   = "2024-07-01T09:34:32.056+02:00" // last sample of the MMS file
* hasMember[0]          = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* hasMember[+]          = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
