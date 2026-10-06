Instance: PHDSensorDeviceMMSSensorAccelerometerDeviceMetricUC2
InstanceOf: IMUDeviceMetric
Title: "(PHD) MMS Accelerometer Device Metric (UC2)"
Description: "Device metric of the accelerometer in the MMS sensor device."
Usage: #example
* id                         = "uc2-002-mms-sensor-accelerometer-device-metric"
* type                       = SensorModalityCS#accelerometer "Accelerometer"
* unit                       = $unitsOfMeasure#[g] "[g]" // the MetaWear CSV is in g
* device                     = Reference(uc2-002-mms-accelerometer-sensor)
* operationalStatus          = #on
* category                   = #measurement
* measurementFrequency.value = 50
* measurementFrequency.unit  = $unitsOfMeasure#Hz "Hertz"
* calibration.type           = #unspecified
* calibration.state          = #calibrated
* calibration.time           = "2024-07-01T07:30:00+01:00" // calibrated in the morning before the session starts at 09:00
