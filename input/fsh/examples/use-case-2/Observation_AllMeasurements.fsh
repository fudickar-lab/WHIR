// hasMember only lists the raw data streams and the activity level summary, which are fixed in number
// per session. The TUG and 30CST results and activity labels (e.g. repeated walking bouts) are not listed,
// since assessments can repeat over a longer home monitoring programme. They all reference the sub-session
// encounter and can be found with
// Observation?encounter=Encounter/uc2-001-sub-session-encounter-home&category=activity

Instance: AllObservationsUC2
InstanceOf: Observation
Title: "All Observations (UC2)"
Description: "All observations from the activity monitoring device in one session: the raw data streams and the activity level summary."
Usage: #example
* id           = "uc2-all-observations"
* status       = #final
* category     = $observation-category#activity "Activity"
* code         = $loinc#82287-4 "Physical activity panel"
* subject      = Reference(uc2-001-patient)
* encounter    = Reference(uc2-001-sub-session-encounter-home)
* hasMember[0] = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* hasMember[+] = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
* hasMember[+] = Reference(uc2-observation-metric-data-activity-level)
