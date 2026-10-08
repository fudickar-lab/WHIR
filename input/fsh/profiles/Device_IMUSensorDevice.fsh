Profile: IMUSensorDevice
Parent: Device
Id: imu-sensor-device
Title: "IMU Sensor Device"
Description: "A wearable IMU sensor used for movement monitoring."

* status = #active
* identifier 0..* MS
* category MS
* category from IMUSensorDeviceCategories (required)
* type MS
* type from IMUSensorTypes (required)
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS
* definition only CodeableReference(DeviceDefinition)

// Optional, but recommended
* name 0..*
* version 0..1
