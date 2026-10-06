Instance: FrailtyConditionUC2
InstanceOf: Condition
Title: "Geriatric Conclusion (UC2)"
Description: "Frailty diagnosed in an earlier geriatric assessment and confirmed by the results of the home assessment."
Usage: #example
* id                    = "uc2-001-geriatric-conclusion-condition"
* clinicalStatus        = $condition-clinical#active
// Confirmed by the clinician based on medical history, the home assessment results and current health status
* verificationStatus    = $condition-ver-status#confirmed
* category.coding[0]    = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.coding[+]    = $sct#439401001 "Diagnosis"
* code                  = $sct#248279007 "Frailty (finding)"
* code.text             = "Frailty (finding)"
* severity              = $sct#24484000 "Severe"
* subject               = Reference(uc2-001-patient)
* recordedDate          = "2024-05-27" // before the care plan starts
* evidence[0].reference = Reference(DiagnosticReport/uc2-001-geriatric-progress-note) // home assessment that confirms the finding
