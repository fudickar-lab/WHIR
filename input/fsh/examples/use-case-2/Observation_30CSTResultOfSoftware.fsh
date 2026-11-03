Instance: ChairStandResultOfSoftwareUC2
InstanceOf: FunctionalAssessmentObservation
Title: "30CST Result from Analysis Software (UC2)"
Description: "Result of the 30-second chair stand test (sit to stand frequency in 30 seconds) computed by the analysis software during the home assessment, without human review."
Usage: #example
* id                                                   = "uc2-002-30CST-result-of-software-observation"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/observation"
* identifier.value                                     = "session-2024-07-01-home-001-assessment-002"
* status                                               = #final
* category                                             = $observation-category#exam "Exam"
* code                                                 = $loinc#66247-8 "Sit to stand frequency in 30 seconds"
* subject                                              = Reference(uc2-001-patient)
* encounter                                            = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start                                = "2024-07-01T13:45:00.000+02:00"
* effectivePeriod.end                                  = "2024-07-01T13:45:30.000+02:00" // the test always lasts 30 s
* device                                               = Reference(uc2-001-software-on-device)
* derivedFrom[0]                                       = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
* valueQuantity                                        = 6 '{#}' "stands" // number of complete stands in 30 s
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#algorithm-generated "Algorithm-generated"
* extension[annotationConfidence].valueDecimal         = 0.88
