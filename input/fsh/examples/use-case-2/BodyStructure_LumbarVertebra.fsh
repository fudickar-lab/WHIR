Instance: LumbarVertebraPlacementUC2
InstanceOf: IMUSensorPlacement
Title: "Sensor Placement: Third Lumbar Vertebra (UC2)"
Description: "MMS sensor worn on a belt at the level of the third lumbar vertebra during the home assessment."
Usage: #example
* id                                               = "uc2-001-body-structure-lumbar-vertebra"
* patient                                          = Reference(uc2-001-patient)
* description                                      = "Lower back, at the level of the third lumbar vertebra"
* includedStructure.structure                      = $sct#263301002 "Level of the third lumbar vertebra (body structure)"
* extension[attachmentMethod].valueCodeableConcept = AttachmentMethodCS#belt "Belt"
