Instance: GeriatricProgressNoteUC2
InstanceOf: GeriatricAssessmentReport
Title: "Geriatric Medicine Outpatient Progress Note (UC2)"
Description: "Progress note interpreting the TUG and 30CST results of the home assessment. It confirms the frailty finding, which references this note in its evidence."
Usage: #example
* id                          = "uc2-001-geriatric-progress-note"
* status                      = #final
* code                        = $loinc#100467-0 "Geriatric medicine Outpatient Progress note"
* subject                     = Reference(uc2-001-patient)
* encounter                   = Reference(uc2-001-session-encounter) // the home assessment session the note summarises
* effectiveDateTime           = "2024-07-01T15:35:00+01:00" // shortly after the session ends, when the results are reviewed
* issued                      = "2024-07-01T16:00:00+01:00"
* supportingInfo[0].type      = $observType#RSLT "Result"
* supportingInfo[=].reference = Reference(uc2-001-tug-result-of-software-observation)
* supportingInfo[+].type      = $observType#RSLT "Result"
* supportingInfo[=].reference = Reference(uc2-002-30CST-result-of-software-observation)
* resultsInterpreter          = Reference(uc2-987654321)
* conclusion                  = "Reduced mobility and increased fall risk consistent with frailty; continue the home exercise programme."
* conclusionCode              = $sct#248279007 "Frailty (finding)"
