Profile: GeriatricExercisePrescription
Parent: ServiceRequest
Id: geriatric-exercise-prescription
Title: "Geriatric Exercise Prescription"
Description: """
One prescribed exercise of a home exercise programme, referenced from activity.plannedActivityReference of a GeriatricExerciseCarePlan.

Since R5 no longer has CarePlan.activity.detail.code, the exercise is coded here. code is bound to the GeriatricAssessmentLabels value set, so the same Otago (or other assessment) codes that label recorded activities also describe what was prescribed.
"""

* status MS

* intent MS
* intent = #order

* subject 1..1 MS
* subject only Reference(Patient)

* code 1..1 MS
* code from GeriatricAssessmentLabels (extensible)

// Frequency and duration, e.g. 3x per week for 2 weeks
* occurrence[x] 0..1 MS
* occurrence[x] only Timing
