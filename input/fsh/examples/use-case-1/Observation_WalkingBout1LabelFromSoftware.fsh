Instance: WalkingBout1LabelFromSoftwareUC1
InstanceOf: ActivityLabelObservation
Title: "Walking Bout 1 Label from Annotation Software (UC1)"
Description: "First of three walking bouts in the same session (see also WalkingBout2LabelFromSoftwareUC1 and WalkingLabelFromSoftwareUC1). Labeled by a human annotator from the raw data."
Usage: #example
* id                                                   = "uc1-003-walking-bout-1-observation-label-from-software"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value                                     = "session-2024-07-01-001-label-001"
* status                                               = #final
* category                                             = $observation-category#activity "Activity"
* code                                                 = HARActivityLabelsCS#walking "Walking"
* subject                                              = Reference(uc1-001-patient)
* encounter                                            = Reference(uc1-001-session-encounter)
* effectivePeriod.start                                = "2024-07-01T09:12:10.000+02:00"
* effectivePeriod.end                                  = "2024-07-01T09:13:55.500+02:00"
* performer                                            = Reference(uc1-001-assessor) // set or checked the label
* device                                               = Reference(uc1-001-label-annotation-software-on-device)
* derivedFrom[0]                                       = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#human-expert "Human expert"
