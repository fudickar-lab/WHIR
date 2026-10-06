// Attachment method belongs to the device on this body in this recording, i.e. DeviceAssociation in R5.
// DeviceAssociation is still draft (FMM 0) and changes in R6, and Device.property is meant for fixed
// characteristics, so the extension is put on BodyStructure instead.

Extension: BodyStructureAttachmentMethod
Id: body-structure-attachment-method
Title: "Body Structure Attachment Method"
Description: "How the sensor, or the device housing it, was fixed to the body at this placement, e.g. watch strap, adhesive patch, belt clip or trouser pocket. If a study uses the same body site with different attachment methods, there is one BodyStructure per method with the same includedStructure.structure. The context is BodyStructure and not the IMUSensorPlacement profile, so the extension can be reused in other BodyStructure profiles."
* ^context.type = #element
* ^context.expression = "BodyStructure"
* value[x] only CodeableConcept
* valueCodeableConcept from AttachmentMethod (required)
