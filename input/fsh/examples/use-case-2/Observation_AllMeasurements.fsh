// hasMember only lists the raw data streams and the activity level summary, which are fixed in number
// per session. The TUG and 30CST results and the activity labels (e.g. repeated walking bouts) are not listed,
// since assessments can repeat over a longer home monitoring programme. They all reference the sub-session
// encounter and can be found with
// Observation?encounter=Encounter/uc2-001-sub-session-encounter-home&category=activity (labels) or &category=exam (test results)

Instance: AllObservationsUC2
InstanceOf: Observation
Title: "All Observations (UC2)"
Description: "All observations from the activity monitoring device in one session: the raw data streams and the activity level summary."
Usage: #example
* id                    = "uc2-all-observations"
* identifier.system     = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value      = "session-2024-07-01-home-001-panel"
* status                = #final
* category              = $observation-category#activity "Activity"
* code                  = $loinc#82287-4 "Physical activity panel"
* subject               = Reference(uc2-001-patient)
* encounter             = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start = "2024-07-01T09:10:09.956+02:00" // first sample of the raw data files
* effectivePeriod.end   = "2024-07-01T15:29:59.996+02:00" // last sample of the raw data files
* hasMember[0]          = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* hasMember[+]          = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
* hasMember[+]          = Reference(uc2-observation-metric-data-activity-level)
