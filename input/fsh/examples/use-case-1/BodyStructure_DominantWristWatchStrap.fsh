Instance: DominantWristWatchStrapExampleUC1
InstanceOf: IMUSensorPlacement
Title: "Dominant Wrist, Smartwatch on a Watch Strap (UC1)"
Description: "Smartwatch worn on the dominant wrist with a watch strap. Shows both extensions on one placement: the qualifier says which wrist, the attachment method says how the device was fixed."
Usage: #example
* id                                                 = "uc1-004-body-structure-dominant-wrist-watch-strap"
* patient                                            = Reference(Patient/uc1-001-patient)
* description                                        = "Dominant wrist, smartwatch worn on a watch strap"
* includedStructure.structure                        = $sct#8205005 "Wrist region structure (body structure)"
* extension[placementQualifier].valueCodeableConcept = $sct#262379005 "Dominant side (qualifier value)"
* extension[attachmentMethod].valueCodeableConcept   = AttachmentMethodCS#watch-strap "Watch strap"
