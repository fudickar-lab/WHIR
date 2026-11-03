Profile: FunctionalAssessmentObservation
Parent: Observation
Id: functional-assessment-observation
Title: "Functional Assessment Observation"
Description: """
Result of a standardised functional test, e.g. the Timed Up and Go (TUG) or the 30-second chair stand test, computed from wearable sensor data or measured by an assessor during the recording.

Unlike an ActivityLabelObservation, which states what the subject was doing in a time interval, this Observation is a clinical measurement: code is the LOINC code of the test, and value is the test result (e.g. the TUG time in seconds). effectivePeriod is the interval in which the test was performed. It must lie within the raw sensor Observation(s) it is derived from (whir-2).

How the result was produced (by software alone, or checked by the assessor) is recorded with the same extensions as for activity labels.
"""

* obeys whir-1 and whir-2

* identifier MS
* status MS

// A test result is a clinical examination finding, not an activity label
* category 1..1 MS
* category = $observation-category#exam "Exam"

* code 1..1 MS
* code from FunctionalAssessmentTests (extensible)

* subject 1..1 MS
* subject only Reference(Patient)

// Recording session in which the test was done
* encounter 1..1 MS

// The test always covers a time span, e.g. the 30 s of the chair stand test
* effective[x] only Period
* effective[x] 1..1 MS

// Assessor who administered or checked the test, if any
* performer MS

// The test result in UCUM units, e.g. s for the TUG
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..1 MS

// Software that computed the result
* device 1..1 MS
* device only Reference(Device)

// Raw sensor Observation(s) the result was computed from
* derivedFrom 1..* MS
* derivedFrom only Reference(LongRawSensorModalityObservation)

* extension contains
    ObservationAnnotationProvenance named annotationProvenance 0..1 MS and
    ObservationAnnotationConfidence named annotationConfidence 0..1 MS
