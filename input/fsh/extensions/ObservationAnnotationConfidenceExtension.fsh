Extension: ObservationAnnotationConfidence
Id: observation-annotation-confidence
Title: "Observation Annotation Confidence"
Description: "Confidence of the algorithm in this label as a decimal between 0.0 and 1.0 (1.0 = most confident), as reported by the classifier (e.g. a softmax probability). Only used together with an annotation provenance of algorithm-generated or semi-automated. Labels set by a human (human-expert, human-reviewed) should not have this extension. The context is Observation and not the ActivityLabelObservation profile, so the extension can be reused in other Observation profiles."
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only decimal
