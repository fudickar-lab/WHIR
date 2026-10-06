Profile: IMUSensorDevice
Parent: Device
Id: imu-sensor-device
Title: "IMU Sensor Device"
Description: "A wearable IMU sensor used for movement monitoring."

* status = #active
* identifier 0..*
* category from IMUSensorDeviceCategories (required)
* type from IMUSensorTypes (required)
* manufacturer 0..1
* modelNumber 0..1
* serialNumber 0..1
* definition only CodeableReference(DeviceDefinition)

// Optional, but recommended
* name 0..*
* version 0..1
