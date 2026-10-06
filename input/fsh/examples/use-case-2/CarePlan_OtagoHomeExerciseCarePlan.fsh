Instance: OtagoHomeExerciseCarePlanUC2
InstanceOf: GeriatricExerciseCarePlan
Title: "Otago Home Exercise Programme (UC2)"
Description: "Otago home exercise programme that addresses the frailty found in an earlier assessment. The home assessment session on 2024-07-01 is a follow-up within this plan. Only the knee extension is included as a planned activity; a full programme would have one GeriatricExercisePrescription per exercise."
Usage: #example
* id                                   = "uc2-001-careplan-exercises"
* status                               = #active
* intent                               = #plan
* category                             = $sct#229075007 "Home exercise program (regime/therapy)"
* subject                              = Reference(uc2-001-patient)
* period.start                         = "2024-06-03" // starts after frailty was found
* period.end                           = "2024-08-25"
* activity[0].plannedActivityReference = Reference(uc2-001-otago-knee-extension-prescription)
* addresses[0].reference               = Reference(Condition/uc2-001-geriatric-conclusion-condition)
