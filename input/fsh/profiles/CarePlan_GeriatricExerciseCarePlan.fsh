Profile: GeriatricExerciseCarePlan
Parent: CarePlan
Id: geriatric-exercise-care-plan
Title: "Geriatric Exercise Care Plan"
Description: """
A home exercise programme prescribed after a geriatric assessment, for example a two-week course of the Otago Exercise Programme after an increased fall risk was found.

FHIR R5 removed CarePlan.activity.detail, which R4 used to code a planned activity directly on the CarePlan. In R5 the code is on the resource that activity.plannedActivityReference points to. Each activity therefore references a GeriatricExercisePrescription, whose code is bound to the GeriatricAssessmentLabels value set (e.g. the Otago exercises).

addresses links the programme to the finding of the assessment it treats, e.g. a frailty Condition.
"""

* status MS

* intent MS
* intent = #plan

* subject 1..1 MS
* subject only Reference(Patient)

// Finding of the assessment the programme treats, e.g. frailty
* addresses MS
* addresses only CodeableReference(Condition)

// The duration of the programme is clinically relevant (e.g. two weeks of Otago)
* period 1..1 MS

* activity 1..* MS
* activity.plannedActivityReference 1..1 MS
* activity.plannedActivityReference only Reference(GeriatricExercisePrescription)
