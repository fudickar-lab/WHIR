Extension: ObservationAnnotationProvenance
Id: observation-annotation-provenance
Title: "Observation Annotation Provenance"
Description: "How a label was produced: by a human annotator from the raw data (human-expert), by a human checking and correcting the output of an algorithm (human-reviewed), by a mix of automatic and manual steps that cannot be separated (semi-automated), or by an algorithm alone (algorithm-generated). Observation.device only names the software that was used, not whether a human was involved. The context is Observation and not the ActivityLabelObservation profile, so the extension can be reused in other Observation profiles."
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from AnnotationProvenance (required)
