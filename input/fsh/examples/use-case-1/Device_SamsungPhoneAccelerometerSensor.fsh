Instance: Device_SamsungAcelerometerSensorUC1
InstanceOf: IMUSensorDevice
Title: "Samsung Phone Accelerometer Sensor (UC1)"
Description: "The accelerometer in the Samsung phone, used for movement monitoring."
Usage: #example
* id                                      = "uc1-001-samsung-accelerometer-sensor"
* status                                  = #active
// * type.coding[0].system                = "http://snomed.info/sct"
// * type.coding[0].code                  = "49062001"
// * type.coding[0].display               = "Accelerometer"
* modelNumber                             = "Samsung-ACC-2023"
* availabilityStatus                      = $AvailabilityStatus#available
* name.value                              = "Samsung Accelerometer Sensor"
* name.type                               = #user-friendly-name
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
// * property.type.text                   = "mds-time-capab-real-time-clock"
// * property.valueCode                   = $hl7VSYesNoIndicator#Y
* mode                                    = $deviceOperationMode#normal
* safety                                  = urn:oid:2.16.840.1.113883.3.26.1.1#C113844 "Labeling does not Contain MRI Safety Information" // no MR safety labeling from the manufacturer
* definition                              = Reference(uc1-004-sensor-definition)
* parent                                  = Reference(uc1-001-samsung-phone)
