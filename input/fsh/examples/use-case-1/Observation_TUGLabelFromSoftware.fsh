Instance: TUGLabelFromSoftwareUC1
InstanceOf: ActivityLabelObservation
Title: "TUG Label from Annotation Software (UC1)"
Description: "Timed Up and Go (TUG) result from the annotation software on the device. The duration is computed from the accelerometer data without human review."
Usage: #example
* id                                                   = "uc1-001-tug-observation-label-from-software"
* identifier.system                                    = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value                                     = "session-2024-07-01-001" // recording session
* status                                               = #final
* category                                             = $observation-category#activity "Activity"
* code                                                 = $loinc#89423-8 "Time to rise from chair, walk 10 feet and back, and return to sitting [TUG]"
* subject                                              = Reference(uc1-001-patient)
* effectivePeriod.start                                = "2024-07-01T14:30:45.123+01:00"
* effectivePeriod.end                                  = "2024-07-01T14:30:53.578+01:00"
* device                                               = Reference(uc1-001-label-annotation-software-on-device)
// Both sensors recorded the whole session, so the label applies to both raw streams.
// If a sensor only covers part of a session, only list the streams running during the label.
* derivedFrom[0]                                       = Reference(uc1-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]                                       = Reference(uc1-observation-accelerometer-raw-data-from-samsung)
* valueQuantity.value                                  = 8
* valueQuantity.unit                                   = "s"
* valueQuantity.system                                 = $unitsOfMeasure
* extension[annotationProvenance].valueCodeableConcept = AnnotationProvenanceCS#algorithm-generated "Algorithm-generated"
* extension[annotationConfidence].valueDecimal         = 0.92
