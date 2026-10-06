Instance: WalkingBout2LabelFromSoftwareUC1
InstanceOf: ActivityLabelObservation
Title: "Walking Bout 2 Label from Annotation Software (UC1)"
Description: "Second of three walking bouts in the same session. A repeated activity is stored as one ActivityLabelObservation per occurrence, with the same code and derivedFrom but a different effectivePeriod. Segmented with human help and classified automatically."
Usage: #example
* id                                                   = "uc1-004-walking-bout-2-observation-label-from-software"
* identifier.system                                    = "https://fudickar-lab.github.io/WearableOn_5RHIF_Profile/sid/recording-session"
* identifier.value                                     = "session-2024-07-01-001" // recording session
* status                                               = #final
* category                                             = $observation-category#activity "Activity"
* code                                                 = HARActivityLabelsCS#walking "Walking"
* subject                                              = Reference(uc1-001-patient)
* effectivePeriod.start                                = "2024-07-01T11:15:02.000+01:00"
* effectivePeriod.end                                  = "2024-07-01T11:16:40.250+01:00"
* device                                               = Reference(uc1-001-label-annotation-software-on-device)
* derivedFrom[0]                                       = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#semi-automated "Semi-automated"
* extension[annotationConfidence].valueDecimal         = 0.75
