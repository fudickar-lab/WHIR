Instance: SubSessionEncounterHomeUC2
InstanceOf: Encounter
Title: "Sub-Session (UC2)"
Description: "Sub-session of the geriatric assessment encounter at home."
Usage: #example
* id                          = "uc2-001-sub-session-encounter-home"
* status                      = #completed
* class                       = $v3-ActCode#HH "home health"
// * serviceType              = $service-type#408 // see Encounter_Session.fsh for other options
// subject probably not needed, the patient is linked through the parent encounter
// * subject                  = Reference(uc2-001-patient)
// * subjectStatus            = $encounter-subject-status#receiving-care
// episodeOfCare could link the patient to a provider responsible for a condition over a period of time,
// even outside an encounter. careTeam could include other carers such as family members or the patient.
// * episodeOfCare            = Reference(001-episodeOfCare-example)
// * careTeam                 = Reference(001-example-careTeam)
* partOf                      = Reference(uc2-001-session-encounter)
* participant[0].type         = $v3-ParticipationType#PPRF
* participant[=].period.start = "2024-07-01T09:00:00+01:00"
* participant[=].period.end   = "2024-07-01T15:30:00+01:00"
* participant[=].actor        = Reference(uc2-002-mms-sensor)
* participant[+].actor        = Reference(uc2-123456732) "Max Mustermann, M.D."
* actualPeriod.start          = "2024-07-01T09:00:00+01:00"
* actualPeriod.end            = "2024-07-01T15:30:00+01:00"
* location.location           = Reference(uc2-001-patients-home-location) "Client's home"
