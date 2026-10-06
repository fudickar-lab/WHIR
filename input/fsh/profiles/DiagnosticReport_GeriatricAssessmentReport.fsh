Profile: GeriatricAssessmentReport
Parent: DiagnosticReport
Id: geriatric-assessment-report
Title: "Geriatric Assessment Report"
Description: """
Report of an automatic geriatric assessment at home. It collects one or more standardised mobility test results, e.g. Timed Up and Go (TUG) or the 30-second chair stand test, recorded as ActivityLabelObservation instances, and the assessor's interpretation of them.

The test results are referenced in supportingInfo and not in result, because they are recorded once during the session and can be used by more than one report.

conclusionCode is a plain CodeableConcept, since R5 DiagnosticReport has no element that references a Condition. A Condition with the same finding (e.g. SNOMED CT 248279007 "Frailty (finding)") points back to the report through Condition.evidence. In R5 Condition.evidence is a CodeableReference, so the finding and the report reference are given as evidence.concept and evidence.reference on the same element.
"""

* status MS

* code 1..1 MS
* code = $loinc#100467-0 "Geriatric medicine Outpatient Progress note"

* subject 1..1 MS
* subject only Reference(Patient)

// Mobility test results (TUG, 30-second chair stand, ...) the report interprets
* supportingInfo 1..* MS
* supportingInfo.reference only Reference(ActivityLabelObservation)

* resultsInterpreter 0..1 MS
* resultsInterpreter only Reference(Practitioner)

* conclusion 0..1 MS

// Usually a SNOMED CT finding such as 248279007 "Frailty (finding)", severity goes on the Condition.
// Unbound for now, a value set of geriatric assessment conclusions could be added later.
* conclusionCode 0..1 MS
