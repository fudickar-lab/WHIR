Instance: RightPocketPlacementUC2
InstanceOf: IMUSensorPlacement
Title: "Sensor Placement: Right Trouser Pocket (UC2)"
Description: "Smartphone carried loose in the right trouser pocket during the home assessment."
Usage: #example
* id                                               = "uc2-002-body-structure-right-pocket"
* patient                                          = Reference(uc2-001-patient)
* description                                      = "Right trouser pocket (inguinal region)"
* includedStructure.structure                      = $sct#37117007 "Right inguinal region structure (body structure)"
* extension[attachmentMethod].valueCodeableConcept = AttachmentMethodCS#pocket "Pocket"
