// One Provenance per processing run, not per label: target lists every Observation the run produced,
// entity the raw data it read, and agent the software (with its version on the Device) and the people involved.
// How each single label was produced stays in the annotationProvenance and annotationConfidence extensions.

Instance: AnalysisRunProvenanceUC2
InstanceOf: Provenance
Title: "Provenance of the Analysis Run (UC2)"
Description: "Links the TUG and 30CST results, the walking labels and the activity level of the home session to the raw data they were computed from and to the analysis software and version."
Usage: #example
* id                   = "uc2-001-provenance-analysis-run"
* target[0]            = Reference(uc2-001-tug-result-of-software-observation)
* target[+]            = Reference(uc2-002-30CST-result-of-software-observation)
* target[+]            = Reference(uc2-005-walking-bout-1-observation-label-from-software)
* target[+]            = Reference(uc2-006-walking-bout-2-observation-label-from-software)
* target[+]            = Reference(uc2-observation-metric-data-activity-level)
* occurredPeriod.start = "2024-07-01T09:10:09.956+02:00"
* occurredPeriod.end   = "2024-07-01T15:30:00.000+02:00"
* recorded             = "2024-07-01T15:31:00+02:00"
* activity             = $v3-DataOperation#CREATE "create"
* activity.text        = "Automatic analysis of the accelerometer data by the home assessment app: detection of the TUG and 30-second chair stand tests and computation of their results, walking bout detection and activity level summary."
* agent[0].type        = $provenance-participant-type#performer "Performer"
* agent[=].who         = Reference(uc2-001-software-on-device) // software version 1.4.0
* entity[0].role       = #source
* entity[=].what       = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* entity[+].role       = #source
* entity[=].what       = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
