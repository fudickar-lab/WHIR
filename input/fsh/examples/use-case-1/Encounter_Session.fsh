Instance: SessionEncounterLabUC1
InstanceOf: Encounter
Title: "Recording Session in the Lab (UC1)"
Description: "One data acquisition session in the lab. Every Observation of the session references this Encounter, and its identifier is the session identifier used to split a dataset by session (training and test sets from different sessions, to avoid leakage)."
Usage: #example
* id                   = "uc1-001-session-encounter"
* identifier.system    = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value     = "session-2024-07-01-001"
* status               = #completed
* class                = $v3-ActCode#AMB "ambulatory" // recording in the lab, not at home
* subject              = Reference(uc1-001-patient)
* participant[0].type  = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor = Reference(uc1-001-assessor) // supervises the recording and the labeling
* actualPeriod.start   = "2024-07-01T09:05:00+02:00"
* actualPeriod.end     = "2024-07-01T09:40:00+02:00"
