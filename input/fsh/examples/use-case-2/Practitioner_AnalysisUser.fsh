Instance: PractitionerAnalysisUserTestUC2
InstanceOf: Practitioner
Title: "Maxine Musterfrau, M.Sc. (UC2)"
Description: "Maxine Musterfrau, M.Sc., who analyses the data (analysis user)."
Usage: #example
* id = "uc2-987654321"
* identifier[+]
  * value = "987654321"
  * type = $v2-0203#U // unspecified identifier
  * use = #official
* active = true
* name[+]
  * use = #usual
  * family = "Musterfrau"
  * given = "Maxine"
  * prefix = "M.Sc."
* gender = #female
* telecom[+]
  * value = "0198-765-4321"
  * system = #phone
  * use = #work
