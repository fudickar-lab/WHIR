Profile: ActivityLabelObservation
Parent: Observation
Id: activity-label-observation
Title: "Activity Label Observation"
Description: """
An activity label for one or more raw sensor recordings: the time interval in which the subject performed a given activity, set by an annotator or annotation software. Used as ground truth for machine learning, or as the output of a classification algorithm.

effective[x] is restricted to Period, since a label without start and end cannot be matched to a segment of the raw data. derivedFrom must reference the raw Observation(s) the label belongs to, so a consumer does not have to work this out from the session identifier and overlapping time windows.

device names the annotation software, but not whether a human was involved. This is recorded in the optional annotationProvenance and annotationConfidence extensions.
"""

// A label always covers a time span, never a single point in time
* effective[x] only Period
* effective[x] 1..1 MS

// Raw sensor Observation(s) the label applies to
* derivedFrom 1..* MS
* derivedFrom only Reference(LongRawSensorModalityObservation)

* subject 1..1 MS

// Recording session identifier, needed to split a dataset by session
* identifier 1..* MS

* category 1..1 MS
* category = $observation-category#activity "Activity"

* code 1..1 MS
* code from ActivityLabels (extensible)

// Optional, most labels need only code and effectivePeriod (e.g. "Walking")
* value[x] 0..1 MS

// Annotation software that produced the label
* device 1..1 MS
* device only Reference(Device)

// Confidence is only meaningful for algorithm-generated or semi-automated labels,
// a label set by a human usually has neither extension
* extension contains
    ObservationAnnotationProvenance named annotationProvenance 0..1 MS and
    ObservationAnnotationConfidence named annotationConfidence 0..1 MS
