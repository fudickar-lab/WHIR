Instance: AnnotationDeviceHuaweiPhoneUC1
InstanceOf: Device
Title: "Huawei Phone for Annotation (UC1)"
Description: "Huawei phone running the annotation software, used by the assessor to label the data in real time during the recording."
Usage: #example
* id                               = "uc1-005-huawei-phone"
* identifier[0].type               = $ContinuaDeviceIdentifiers#SYSID "IEEE 11073 System Identifier"
* identifier[=].system             = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[=].value              = "02-02-02-02-02-02-02-02"
* manufacturer                     = "Huawei"
* availabilityStatus               = $AvailabilityStatus#available
* serialNumber                     = "R6CX31TA3DY"
* modelNumber                      = "HW-S925432B"
* category                         = $deviceCategory#active
* category                         = $deviceCategory#communicating
* category                         = $deviceCategory#reusable
* category                         = $deviceCategory#software
* type                             = $sct#1187059002 "Smartphone (physical object)"
// property.type does not work, $ASN1toHL7 (http://hl7.org/fhir/uv/phd/CodeSystem/ASN1ToHL7) does not resolve
// * property.type                 = $ASN1toHL7#68219 "mds-time-capab-real-time-clock"
// * property.valueCodeableConcept = $hl7VSYesNoIndicator#Y
* mode                             = $deviceOperationMode#normal
* definition                       = Reference(uc1-001-smartphone-device-definition)
