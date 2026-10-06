Instance: PHDSensorDeviceMMSSensorUC1
InstanceOf: Device
Title: "(PHD) MMS Sensor Device (UC1)"
Description: "MMS sensor device (PHD) that records the movement data."
Usage: #example
* id                                      = "uc1-002-mms-sensor"
* identifier[0].type                      = $ContinuaDeviceIdentifiers#SYSID "IEEE 11073 System Identifier"
* identifier[=].system                    = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[=].value                     = "01-01-01-01-01-01-01-01"
* identifier[+].type                      = $ContinuaDeviceIdentifiers#BTMAC "Bluetooth MAC Address"
* identifier[=].system                    = "http://hl7.org/fhir/sid/eui-48/bluetooth"
* identifier[=].value                     = "E8:4C:1E:35:3B:9C"
* manufacturer                            = "MBIENTLAB"
* availabilityStatus                      = $AvailabilityStatus#available
* serialNumber                            = "MMS21A04837"
* name.value                              = "MMS"
* name.type                               = #user-friendly-name
* modelNumber                             = "MetaMotionS-r1"
* category                                = $deviceCategory#active
* category                                = $deviceCategory#communicating
* category                                = $deviceCategory#home-use
* category                                = $deviceCategory#reusable
* type                                    = urn:iso:std:iso:11073:10101#65573 "MDC_MOC_VMS_MDS_SIMP" // Continua Personal Health Device
// * extension[specialization].systemType = urn:iso:std:iso:11073:10101#528457 // Generic 20601 Device
// * extension[specialization].version    = "1"
* version.type                            = urn:iso:std:iso:11073:10101#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
* version.value                           = "6.0"
* conformsTo.category                     = $deviceSpecCategory#communication
* conformsTo.category                     = $deviceSpecCategory#measurement
* conformsTo.specification                = urn:iso:std:iso:11073:10101#528457 "MDC_DEV_SPEC_PROFILE_GENERIC" // all 20601 compliant devices
// specialization extension probably not needed, conformsTo already says it is a Continua PHD
// * property.type                        = $ASN1toHL7#68219.0
// * property.type.text                   = "mds-time-capab-real-time-clock" // TODO: check for MMS+
// * property.valueCode                   = $hl7VSYesNoIndicator#Y // TODO: check for MMS+
* mode                                    = $deviceOperationMode#normal
* safety                                  = urn:oid:2.16.840.1.113883.3.26.1.1#C113844 "Labeling does not Contain MRI Safety Information" // no MR safety labeling from the manufacturer
* definition                              = Reference(uc1-002-monitoring-device-definition)
* gateway                                 = Reference(uc1-003-all-devices) // TODO: gateway or parent?
