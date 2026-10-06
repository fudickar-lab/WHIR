Instance: PractitionerDoctorTestUC2
InstanceOf: Practitioner
Title: "Max Mustermann, M.D. (UC2)"
Description: "Max Mustermann, M.D., the assessor who interprets the results and makes the diagnosis."
Usage: #example
* id = "uc2-123456732"
* identifier[+]
  * value = "123456732" // LANR: digits 1-6 lifelong ID, digit 7 check digit, 32 = geriatrics
  * type = $v2-0203#DN // physician number (Arztnummer)
  * use = #official
* active = true
* name[+]
  * use = #usual
  * family = "Mustermann"
  * given = "Max"
  * prefix = "Dr"
  * suffix[0] = "M.D."
* gender = #male
* telecom[+]
  * value = "0155-123-5467"
  * system = #phone
  * use = #work
