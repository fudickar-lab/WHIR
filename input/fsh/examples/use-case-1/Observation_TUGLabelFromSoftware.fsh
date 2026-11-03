// Both sensors recorded the whole session, so the result is derived from both raw streams.
// If a sensor only covers part of a session, only list the streams running during the test.

Instance: TUGLabelFromSoftwareUC1
InstanceOf: FunctionalAssessmentObservation
Title: "TUG Result from Annotation Software (UC1)"
Description: "Timed Up and Go (TUG) result from the annotation software on the device, recorded in the lab as reference data for training. The duration is computed from the accelerometer data without human review and equals the length of effectivePeriod."
Usage: #example
* id                                                   = "uc1-001-tug-observation-label-from-software"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value                                     = "session-2024-07-01-001-assessment-001"
* status                                               = #final
* category                                             = $observation-category#exam "Exam"
* code                                                 = $loinc#89423-8 "Time to rise from chair, walk 10 feet and back, and return to sitting [TUG]"
* subject                                              = Reference(uc1-001-patient)
* encounter                                            = Reference(uc1-001-session-encounter)
* effectivePeriod.start                                = "2024-07-01T09:16:45.123+02:00" // rising from the chair
* effectivePeriod.end                                  = "2024-07-01T09:16:53.578+02:00" // sitting down again
* device                                               = Reference(uc1-001-label-annotation-software-on-device)
* derivedFrom[0]                                       = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
* valueQuantity                                        = 8.5 's' "s" // 8.455 s, rounded as in clinical practice
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#algorithm-generated "Algorithm-generated"
* extension[annotationConfidence].valueDecimal         = 0.92
