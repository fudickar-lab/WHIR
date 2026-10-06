Instance: RightPocketExampleUC1
InstanceOf: IMUSensorPlacement
Title: "Right Pocket (UC1)"
Description: "Smartphone carried loose in the right trouser pocket. The attachment method distinguishes it from a device clipped or strapped to the same body site."
Usage: #example
* id                                               = "uc1-002-body-structure-right-pocket"
* patient                                          = Reference(Patient/uc1-001-patient)
* description                                      = "Right pocket (inguinal region)"
* includedStructure.structure                      = $sct#37117007 "Right inguinal region structure (body structure)"
* extension[attachmentMethod].valueCodeableConcept = AttachmentMethodCS#pocket "Pocket"
