Instance: WalkingLabelFromSoftwareUC1
InstanceOf: ActivityLabelObservation
Title: "Walking Label from Annotation Software (UC1)"
Description: "Third walking bout in the same session (15:23 to 15:30). Labeled automatically by the software on the device and checked by a human annotator after the session."
Usage: #example
* id                                                   = "uc1-002-walking-observation-label-from-software"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value                                     = "session-2024-07-01-001" // recording session
* status                                               = #final
* category                                             = $observation-category#activity "Activity"
* code                                                 = HARActivityLabelsCS#walking "Walking"
* subject                                              = Reference(uc1-001-patient)
* effectivePeriod.start                                = "2024-07-01T15:23:45.123+01:00"
* effectivePeriod.end                                  = "2024-07-01T15:30:53.578+01:00"
* device                                               = Reference(uc1-001-label-annotation-software-on-device)
* derivedFrom[0]                                       = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#human-reviewed "Human-reviewed"
