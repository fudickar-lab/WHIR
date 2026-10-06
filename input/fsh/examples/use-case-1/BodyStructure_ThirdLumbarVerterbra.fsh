Instance: LumbarVertebraExampleUC1
InstanceOf: IMUSensorPlacement
Title: "Third Lumbar Vertebra (UC1)"
Description: "Sensor worn on a belt at the level of the third lumbar vertebra."
Usage: #example
* id                                               = "uc1-001-body-structure-lumbar-vertebra"
* patient                                          = Reference(Patient/uc1-001-patient)
* description                                      = "Third lumbar vertebra, lower spine region"
* includedStructure.structure                      = $sct#263301002 "Level of the third lumbar vertebra (body structure)"
* extension[attachmentMethod].valueCodeableConcept = AttachmentMethodCS#belt "Belt"
