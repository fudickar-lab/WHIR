Instance: PHDSensorDeviceGatewayUC1
InstanceOf: Device
Title: "PHD Device Gateway (UC1)"
Description: "Device gateway (PHG), the computer that all data is sent to."
Usage: #example
* id                                       = "uc1-003-all-devices"
* identifier[0].type                       = $ContinuaDeviceIdentifiers#SYSID
* identifier[=].system                     = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[=].value                      = "ec-de-3d-4e-58-53-2d-31"
* identifier[+].type                       = $ContinuaDeviceIdentifiers#BTMAC
* identifier[=].system                     = "http://hl7.org/fhir/sid/eui-48/bluetooth"
* identifier[=].value                      = "3d-4e-58-53-2d-31"
* identifier[+].type                       = $ContinuaDeviceIdentifiers#ETHMAC
* identifier[=].system                     = "http://hl7.org/fhir/sid/eui-48/ethernet"
* identifier[=].value                      = "3d-4e-58-53-2d-35"
* displayName                              = "Personal computer where the data from all devices is collected"
* definition                               = Reference(uc1-003-computer-device-definition)
* availabilityStatus                       = $AvailabilityStatus#available
* name.value                               = "All devices"
* name.type                                = #user-friendly-name
* category                                 = $deviceCategory#active
* category                                 = $deviceCategory#communicating
* category                                 = $deviceCategory#home-use
* category                                 = $deviceCategory#reusable
* category                                 = $deviceCategory#software
* type                                     = urn:iso:std:iso:11073:10101#531981 "MDC_MOC_VMS_MDS_AHD" // Continua Personal Health Gateway
* version.type                             = urn:iso:std:iso:11073:10101#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION" // TODO: or deviceVersion?
* version.value                            = "6.0"
* conformsTo.category                      = $deviceSpecCategory#communication
* conformsTo.category                      = $deviceSpecCategory#performance
* conformsTo.specification                 = urn:iso:std:iso:11073:10101#528457 "MDC_DEV_SPEC_PROFILE_GENERIC" // all 20601 compliant devices
* mode                                     = $deviceOperationMode#normal
// * property.type                         = $ASN1toHL7#68219.0
// * property.type.text                    = "mds-time-capab-real-time-clock"
// * property.valueCode                    = $hl7VSYesNoIndicator#Y
* property[0].type                         = urn:iso:std:iso:11073:10101#68220
* property[=].type.text                    = "MDC_TIME_SYNC_PROTOCOL: Time synchronization protocol"
* property[=].valueCodeableConcept         = urn:iso:std:iso:11073:10101#532226
* property[=].valueCodeableConcept.text    = "MDC_TIME_SYNC_NTPV4: NTPV4 time synchronization"
// * property[+].type                      = urn:iso:std:iso:11073:10101#532353
// * property[=].type.text                 = "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST: certified device list as transport-specialization combo"
// * property[=].valueCodeableConcept      = $ContinuaPHD#4
// * property[+].type                      = urn:iso:std:iso:11073:10101#532355
// * property[=].type.text                 = "MDC_REG_CERT_DATA_CONTINUA_AHD_CERT_LIST: certified Upload classes"
// * property[=].valueCodeableConcept[0]   = $ContinuaHFS#0 // observation-upload-soap: PCD-01 upload using Web services
// * property[=].valueCodeableConcept[+]   = $ContinuaHFS#2 // capabilities: Capabilities Exchange
// * property[=].valueCodeableConcept[+]   = $ContinuaHFS#3 // observation-upload-hdata: PCD-01 upload using HDATA
// * property[=].valueCodeableConcept[+]   = $ContinuaHFS#6 // aps: Authenticated Persistent Sessions
// * property[=].valueCodeableConcept[+]   = $ContinuaHFS#7 // observation-upload-fhir: uploading FHIR resources
// * property[+].type                      = $ASN1ToHL7#532354.0
// * property[=].type.text                 = "regulation-status"
// * property[=].valueCodeableConcept      = $hl7VSYesNoIndicator#Y
// * property[=].valueCodeableConcept.text = "Device is not regulated"
