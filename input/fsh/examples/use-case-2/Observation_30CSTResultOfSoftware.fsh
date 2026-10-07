Instance: ChairStandResultOfSoftwareUC2
InstanceOf: ActivityLabelObservation
Title: "30CST Result from Analysis Software (UC2)"
Description: "Result of the 30-second chair stand test (sit to stand frequency in 30 seconds) computed by the analysis software during the home assessment, without human review."
Usage: #example
* id                                                   = "uc2-002-30CST-result-of-software-observation"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value                                     = "uc2-001-sub-session-encounter-home" // same as the id of the sub-session encounter
* status                                               = #final
* category                                             = $observation-category#activity "Activity"
* code                                                 = $loinc#66247-8 "Sit to stand frequency in 30 seconds"
* subject                                              = Reference(uc2-001-patient)
* encounter                                            = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start                                = "2024-07-01T13:45:00.000+01:00"
* effectivePeriod.end                                  = "2024-07-01T13:45:30.000+01:00" // the test always lasts 30 s
* device                                               = Reference(uc2-001-software-on-device)
* derivedFrom[0]                                       = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
* valueQuantity.value                                  = 6
* valueQuantity.unit                                   = "stands/30s"
* valueQuantity.system                                 = $unitsOfMeasure
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#algorithm-generated "Algorithm-generated"
* extension[annotationConfidence].valueDecimal         = 0.88
