Instance: DominantHandExampleUC1
InstanceOf: IMUSensorPlacement
Title: "Dominant Hand (UC1)"
Description: "Sensor on the dominant hand, without laterality. Many datasets only say \"dominant hand\", so the hand is coded without a side and the placement qualifier states that the dominant side is meant."
Usage: #example
* id                                                 = "uc1-003-body-structure-dominant-hand"
* patient                                            = Reference(Patient/uc1-001-patient)
* description                                        = "Dominant hand"
* includedStructure.structure                        = $sct#85562004 "Hand structure (body structure)"
* extension[placementQualifier].valueCodeableConcept = $sct#262379005 "Dominant side (qualifier value)"
