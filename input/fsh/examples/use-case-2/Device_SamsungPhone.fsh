Instance: SensorDeviceSamsungPhoneUC2
InstanceOf: Device
Title: "Samsung Phone (UC2)"
Description: "Samsung phone used as PHD device to measure, collect and transmit the data."
Usage: #example
* id                               = "uc2-001-samsung-phone"
* identifier[0].type               = $ContinuaDeviceIdentifiers#SYSID "IEEE 11073 System Identifier"
* identifier[=].system             = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[=].value              = "00-00-00-00-00-00-00-00"
* identifier[+].type               = $ContinuaDeviceIdentifiers#BTMAC "Bluetooth MAC Address"
* identifier[=].system             = "http://hl7.org/fhir/sid/eui-48/bluetooth"
* identifier[=].value              = "BC:79:AD:98:C8:AC:F8"
* manufacturer                     = "Samsung"
* availabilityStatus               = $AvailabilityStatus#available
* serialNumber                     = "R5CX20TA2DY"
* modelNumber                      = "SM-S928B/DS"
* category                         = $deviceCategory#active
* category                         = $deviceCategory#communicating
* category                         = $deviceCategory#home-use
* category                         = $deviceCategory#reusable
* category                         = $deviceCategory#software
* type                             = urn:iso:std:iso:11073:10101#65573 "MDC_MOC_VMS_MDS_SIMP" // Continua Personal Health Device
* version.type                     = urn:iso:std:iso:11073:10101#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
* version.value                    = "6.0"
* conformsTo.category              = $deviceSpecCategory#communication
* conformsTo.category              = $deviceSpecCategory#measurement
* conformsTo.specification         = urn:iso:std:iso:11073:10101#528457 "MDC_DEV_SPEC_PROFILE_GENERIC" // all 20601 compliant devices
// property.type.text gives an error, so these are commented out
// * property.type                 = $ASN1toHL7#68219.0
// * property.type.text            = "mds-time-capab-real-time-clock"
// * property.valueCodeableConcept = $hl7VSYesNoIndicator#Y
* mode                             = $deviceOperationMode#normal
* definition                       = Reference(uc2-001-smartphone-device-definition)
