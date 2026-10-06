Instance: WalkingBout2LabelFromSoftwareUC2
InstanceOf: ActivityLabelObservation
Title: "Walking Bout 2 Label from Analysis Software (UC2)"
Description: "Second of two short walking bouts in the home assessment session, with the same code and derivedFrom as WalkingBout1LabelFromSoftwareUC2 but a different effectivePeriod."
Usage: #example
* id                    = "uc2-006-walking-bout-2-observation-label-from-software"
* identifier.system     = "https://fudickar-lab.github.io/WearableOn_5RHIF_Profile/sid/recording-session"
* identifier.value      = "uc2-001-sub-session-encounter-home" // same as the id of the sub-session encounter
* status                = #final
* category              = $observation-category#activity "Activity"
* code                  = HARActivityLabelsCS#walking "Walking"
* subject               = Reference(uc2-001-patient)
* encounter             = Reference(uc2-001-sub-session-encounter-home)
* effectivePeriod.start = "2024-07-01T12:30:10.000+01:00"
* effectivePeriod.end   = "2024-07-01T12:32:00.250+01:00"
* device                = Reference(uc2-001-software-on-device)
* derivedFrom[0]        = Reference(uc2-observation-accelerometer-raw-data-from-mms)
* derivedFrom[+]        = Reference(uc2-observation-accelerometer-raw-data-from-samsung)
