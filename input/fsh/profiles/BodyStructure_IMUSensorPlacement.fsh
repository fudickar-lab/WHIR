Profile: IMUSensorPlacement
Parent: BodyStructure
Id: imu-sensor-placement
Title: "IMU Sensor Placement"
Description: "The body site where a wearable IMU sensor was worn during a recording, coded with SNOMED CT from the HARBodyLocations value set. If the source reports it, the placement also states how the device was attached and which side was meant."

// One sensor is worn at one site, more than one structure would be ambiguous
* includedStructure 1..1 MS
* includedStructure.structure MS
* includedStructure.structure from HARBodyLocations (extensible)

// Placement as described in the source (e.g. "right trouser pocket"), distinguishes instances with the same code
* description MS

* patient MS

// Both extensions are optional and independent of each other
* extension contains
    BodyStructurePlacementQualifier named placementQualifier 0..1 MS and
    BodyStructureAttachmentMethod named attachmentMethod 0..1 MS
