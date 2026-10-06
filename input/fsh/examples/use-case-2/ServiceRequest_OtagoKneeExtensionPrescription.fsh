Instance: OtagoKneeExtensionPrescriptionUC2
InstanceOf: GeriatricExercisePrescription
Title: "Otago Knee Extension Prescription (UC2)"
Description: "Knee extension three times a week, one exercise of the Otago home exercise programme."
Usage: #example
* id                                 = "uc2-001-otago-knee-extension-prescription"
* status                             = #active
* intent                             = #order
* subject                            = Reference(uc2-001-patient)
* code.concept                       = GeriatricAssessmentLabelsCS#otago-knee-extension "Knee extension (Otago)"
* occurrenceTiming.repeat.frequency  = 3
* occurrenceTiming.repeat.period     = 1
* occurrenceTiming.repeat.periodUnit = #wk
