Instance: SessionEncounterHomeUC2
InstanceOf: Encounter
Title: "Session Encounter at Home (UC2)"
Description: "A data recording session at the patient's home."
Usage: #example
* id                             = "uc2-001-session-encounter"
* status                         = #completed
* class                          = $v3-ActCode#HH "home health"
// serviceType options: 408 physical activity, 147 physical fitness testing, 171 geriatric medicine, 181 rehabilitation medicine,
// 252 assessment, 334 exercise, 369 independent living, 491 exercise physiology
// * serviceType                 = $service-type#408
* subject                        = Reference(uc2-001-patient)
// * subjectStatus               = $encounter-subject-status#receiving-care
// * participant[0].type         = $v3-ParticipationType#PPRF
// * participant[=].period.start = "2024-07-01T09:00:00+01:00"
// * participant[=].period.end   = "2024-07-01T15:30:00+01:00"
// * participant[=].actor        = Reference(Practitioner/example) "Dr Adam Careful"
// * participant[+].actor        = Reference(Patient/example)
* actualPeriod.start             = "2024-07-01T09:00:00+01:00"
* actualPeriod.end               = "2024-07-01T15:30:00+01:00"
* location.location              = Reference(uc2-001-patients-home-location) "Client's home"
* basedOn                        = Reference(uc2-001-careplan-exercises) "Geriatric Assessment Care Plan at home"
