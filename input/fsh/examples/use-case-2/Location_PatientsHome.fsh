Instance: PatientsHomeUC2
InstanceOf: Location
Title: "Patient's Home (UC2)"
Description: "The patient's home, where the geriatric assessment with the IMU sensor device takes place."
Usage: #example
* id                 = "uc2-001-patients-home-location"
* status             = #active
* name               = "Patient's Home"
* description        = "Patient's home, where the geriatric test takes place using an IMU Sensor Device for automated assessment."
* mode               = #kind
* type               = $v3-RoleCode#PTRES "Patient's Residence"
* form               = $location-physical-type#ho "House"
* address.line[0]    = "Musterstraße 1"
* address.city       = "Musterstadt"
* address.state      = "Musterland"
* address.postalCode = "123456"
