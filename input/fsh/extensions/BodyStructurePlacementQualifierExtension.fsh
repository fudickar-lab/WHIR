Extension: BodyStructurePlacementQualifier
Id: body-structure-placement-qualifier
Title: "Body Structure Placement Qualifier"
Description: "Says which side is meant when a dataset or protocol gives a sensor site without laterality, e.g. \"the dominant wrist\". The site itself is coded in BodyStructure.includedStructure.structure without a side, and this extension adds dominant, non-dominant, ipsilateral, contralateral, preferred or affected. The context is BodyStructure and not the IMUSensorPlacement profile, so the extension can be reused in other BodyStructure profiles."
* ^context.type = #element
* ^context.expression = "BodyStructure"
* value[x] only CodeableConcept
* valueCodeableConcept from PlacementQualifier (required)
