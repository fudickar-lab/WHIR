Instance: TUGResultOfSoftwareUC2
InstanceOf: ActivityLabelObservation
Title: "TUG Result from Analysis Software (UC2)"
Description: "Timed Up and Go (TUG) result computed by the analysis software during the home assessment, without human review."
Usage: #example
* id                                                   = "uc2-001-tug-result-of-software-observation"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value                                     = "uc2-001-sub-session-encounter-home" // same as the id of the sub-session encounter
* status                                               = #final
* category                                             = $observation-category#activity "Activity"
* code                                                 = $loinc#89423-8 "Time to rise from chair, walk 10 feet and back, and return to sitting [TUG]"
* subject                                              = Reference(uc2-001-patient)
* encounter                                            = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start                                = "2024-07-01T14:30:45.123+01:00"
* effectivePeriod.end                                  = "2024-07-01T14:30:53.578+01:00"
* device                                               = Reference(uc2-001-software-on-device)
* derivedFrom[0]                                       = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
* valueQuantity.value                                  = 8
* valueQuantity.unit                                   = "s"
* valueQuantity.system                                 = $unitsOfMeasure
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#algorithm-generated "Algorithm-generated"
* extension[annotationConfidence].valueDecimal         = 0.92
