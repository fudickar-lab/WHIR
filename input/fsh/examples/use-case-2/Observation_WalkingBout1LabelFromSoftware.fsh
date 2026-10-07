Instance: WalkingBout1LabelFromSoftwareUC2
InstanceOf: ActivityLabelObservation
Title: "Walking Bout 1 Label from Analysis Software (UC2)"
Description: "First of two short walking bouts in the home assessment session, recorded between the TUG and 30CST tests and not part of either. As in use case 1, a repeated activity is stored as one ActivityLabelObservation per occurrence."
Usage: #example
* id                    = "uc2-005-walking-bout-1-observation-label-from-software"
* identifier.system     = "https://fudickar-lab.github.io/WHIR/sid/recording-session"
* identifier.value      = "uc2-001-sub-session-encounter-home" // same as the id of the sub-session encounter
* status                = #final
* category              = $observation-category#activity "Activity"
* code                  = HARActivityLabelsCS#walking "Walking"
* subject               = Reference(uc2-001-patient)
* encounter             = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start = "2024-07-01T10:05:00.000+01:00"
* effectivePeriod.end   = "2024-07-01T10:07:45.500+01:00"
* device                = Reference(uc2-001-software-on-device)
* derivedFrom[0]        = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]        = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
