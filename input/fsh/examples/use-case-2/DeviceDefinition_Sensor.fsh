// DeviceDefinition describes a kind of device (e.g. a model of wearable), whereas Device is one
// actual device, e.g. the wearable a participant is wearing.

Instance: SensorDefinitionUC2
InstanceOf: DeviceDefinition
Title: "Sensor Device (UC2)"
Description: "Definition of a single sensor built into a device."
Usage: #example
* id                  = "uc2-004-sensor-definition"
* deviceName.name     = "Sensor"
* deviceName.type     = $DvcNameType#user-friendly-name
* classification.type = $sct#408746007 "Sensor device (physical object)"
