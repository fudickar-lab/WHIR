Instance: PHDSensorDeviceSamsungPhoneAccelerometerDeviceMetricUC2
InstanceOf: IMUDeviceMetric
Title: "Samsung Phone Accelerometer Device Metric (UC2)"
Description: "Device metric of the accelerometer in the Samsung phone."
Usage: #example
* id                         = "uc2-001-samsung-phone-accelerometer-device-metric"
* type                       = SensorModalityCS#accelerometer "Accelerometer"
* unit                       = $unitsOfMeasure#m/s2 "m/s2"
* device                     = Reference(uc2-001-samsung-accelerometer-sensor)
* operationalStatus          = #on
* category                   = #measurement
* measurementFrequency.value = 100
* measurementFrequency.unit  = $unitsOfMeasure#Hz "Hertz"
* calibration.type           = #unspecified
* calibration.state          = #calibrated
* calibration.time           = "2024-07-01T07:30:00+01:00" // calibrated in the morning before the session starts at 09:00
