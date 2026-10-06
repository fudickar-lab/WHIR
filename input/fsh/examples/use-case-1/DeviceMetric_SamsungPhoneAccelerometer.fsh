Instance: PHDSensorDeviceSamsungPhoneAccelerometerDeviceMetricUC1
InstanceOf: IMUDeviceMetric
Title: "Samsung Phone Accelerometer Device Metric (UC1)"
Description: "Device metric of the accelerometer in the Samsung phone."
Usage: #example
* id                         = "uc1-001-samsung-phone-accelerometer-device-metric"
* type                       = SensorModalityCS#accelerometer "Accelerometer"
* unit                       = $unitsOfMeasure#m/s2 "m/s2"
* device                     = Reference(uc1-001-samsung-accelerometer-sensor)
* operationalStatus          = #on
* category                   = #measurement
* measurementFrequency.value = 100
* measurementFrequency.unit  = $unitsOfMeasure#Hz "Hertz"
* calibration.type           = #unspecified
* calibration.state          = #calibrated
* calibration.time           = "2024-09-05T09:03:04-05:00"
