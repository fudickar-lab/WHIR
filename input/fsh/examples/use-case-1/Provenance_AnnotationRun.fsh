// One Provenance per processing run, not per label: target lists every Observation the run produced,
// entity the raw data it read, and agent the software (with its version on the Device) and the people involved.
// How each single label was produced stays in the annotationProvenance and annotationConfidence extensions.

Instance: AnnotationRunProvenanceUC1
InstanceOf: Provenance
Title: "Provenance of the Annotation Run (UC1)"
Description: "Links all labels and the TUG result of the lab session to the raw data they were computed from, the annotation software and version, and the assessor who checked the labels."
Usage: #example
* id                   = "uc1-001-provenance-annotation-run"
* target[0]            = Reference(uc1-003-walking-bout-1-observation-label-from-software)
* target[+]            = Reference(uc1-004-walking-bout-2-observation-label-from-software)
* target[+]            = Reference(uc1-002-walking-observation-label-from-software)
* target[+]            = Reference(uc1-001-tug-observation-label-from-software)
* occurredPeriod.start = "2024-07-01T09:10:09.956+02:00"
* occurredPeriod.end   = "2024-07-01T09:38:00.000+02:00"
* recorded             = "2024-07-01T09:38:00+02:00"
* activity             = $v3-DataOperation#CREATE "create"
* activity.text        = "Labeling of the accelerometer data during and after the recording: automatic segmentation and classification by the annotation software, manual labeling (walking bout 1), human-assisted segmentation (walking bout 2) and review by the assessor (walking bout 3)."
* agent[0].type        = $provenance-participant-type#performer "Performer"
* agent[=].who         = Reference(uc1-001-label-annotation-software-on-device) // software version 2.1.0
* agent[+].type        = $provenance-participant-type#verifier "Verifier"
* agent[=].who         = Reference(uc1-001-assessor) // labeled or checked the human-involved labels
* entity[0].role       = #source
* entity[=].what       = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* entity[+].role       = #source
* entity[=].what       = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
