Instance: TUGResultOfSoftwareUC2
InstanceOf: FunctionalAssessmentObservation
Title: "TUG Result from Analysis Software (UC2)"
Description: "Timed Up and Go (TUG) result computed by the analysis software during the home assessment, without human review. The duration equals the length of effectivePeriod."
Usage: #example
* id                                                   = "uc2-001-tug-result-of-software-observation"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value                                     = "session-2024-07-01-home-001-assessment-001"
* status                                               = #final
* category                                             = $observation-category#exam "Exam"
* code                                                 = $loinc#89423-8 "Time to rise from chair, walk 10 feet and back, and return to sitting [TUG]"
* subject                                              = Reference(uc2-001-patient)
* encounter                                            = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start                                = "2024-07-01T14:30:45.123+02:00" // rising from the chair
* effectivePeriod.end                                  = "2024-07-01T14:30:53.578+02:00" // sitting down again
* device                                               = Reference(uc2-001-software-on-device)
* derivedFrom[0]                                       = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
* valueQuantity                                        = 8.5 's' "s" // 8.455 s
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#algorithm-generated "Algorithm-generated"
* extension[annotationConfidence].valueDecimal         = 0.92
